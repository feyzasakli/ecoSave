import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SettingsPage extends StatefulWidget {
  final Color backgroundColor;
  final List<Color> gradientColors;
  final String titleText;
  final String labelText;

  const SettingsPage({
    Key? key,
    required this.backgroundColor,
    required this.gradientColors,
    required this.titleText,
    required this.labelText,
  }) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String? selectedFileName;
  String? uploadedImageUrl;
  late FirebaseFirestore _firestore;
  final TextEditingController adController = TextEditingController();
  final TextEditingController kullaniciAdiController = TextEditingController();
  final TextEditingController epostaController = TextEditingController();
  final TextEditingController sifreController = TextEditingController();
  final TextEditingController yeniSifreController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _firestore = FirebaseFirestore.instance;
    getDataFromFirestore();
  }

  Future<void> saveDataToFirestore(BuildContext context) async {
    try {
      String currentPassword = sifreController.text;
      String newPassword = yeniSifreController.text;

      // Firebase Authentication kullanarak kullanıcının şifresini güncelle
      User? user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        // Kullanıcının şifresini güncelleme isteği gönder
        await user.updatePassword(newPassword);

        // Firestore'da diğer verileri kaydet
        await _firestore.collection('users').doc('kullanici_id').set({
          'ad': adController.text,
          'kullanici_adi': kullaniciAdiController.text,
          'eposta': epostaController.text,
          'sifre': currentPassword,
          'yeni_sifre': newPassword,
        });

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Veri kaydedildi')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Kullanıcı oturumu açık değil')),
        );
      }
    } catch (e) {
      if (kDebugMode) {
        print('Hata: $e');
      }
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Veri kaydedilemedi')),
      );
    }
  }

  Future<String> uploadFileToStorage() async {
    if (selectedFileName != null) {
      try {
        final File file = File(selectedFileName!);
        final String fileName = file.path.split('/').last;

        final Reference storageRef = FirebaseStorage.instance
            .ref()
            .child('profil_resimleri/$fileName');

        final TaskSnapshot uploadTask = await storageRef.putFile(file);

        final String downloadURL = await uploadTask.ref.getDownloadURL();

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Dosya başarıyla yüklendi')),
        );

        return downloadURL;
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Dosya yüklenirken bir hata oluştu')),
        );
      }
    }
    return '';
  }

  Future<void> _selectAndUploadFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null) {
      selectedFileName = result.files.first.path!;
    }
  }

  Future<void> uploadSelectedFile(BuildContext context) async {
    await uploadFileToStorage();

    final downloadURL = await uploadFileToStorage();
    setState(() {
      uploadedImageUrl = downloadURL;
    });
  }

  Future<void> getDataFromFirestore() async {
    try {
      DocumentSnapshot snapshot = await FirebaseFirestore.instance
          .collection('users')
          .doc('kullanici_id')
          .get();

      if (snapshot.exists) {
        var data = snapshot.data() as Map<String, dynamic>;
        String? ad = data['ad'];
        String? kullaniciAdi = data['kullanici_adi'];
        String? eposta = data['eposta'];
        String? sifre = data['sifre'];
        String? yeniSifre = data['yeni_sifre'];

        adController.text = ad ?? '';
        kullaniciAdiController.text = kullaniciAdi ?? '';
        epostaController.text = eposta ?? '';
        sifreController.text = sifre ?? '';
        yeniSifreController.text = yeniSifre ?? '';
      } else {
        if (kDebugMode) {
          print('Belge bulunamadı');
        }
      }
    } catch (e) {
      if (kDebugMode) {
        print('Hata: $e');
      }
    }
  }

  bool validatePasswords() {
    String currentPassword = sifreController.text;
    String newPassword = yeniSifreController.text;

    // Şifreleri doğrulama mantığını buraya ekleyin
    // Örneğin, şifrenin belirli bir uzunlukta olması veya özel bir karakter içermesi gerekebilir

    // Geçerli ise true, aksi takdirde false döndürün
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.backgroundColor,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: const [
                Color(0xFF17A3A2), // #17A3A2 on the left
                Color(0xFF52C077), // #52C077 on the right
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        title: Text(
          widget.titleText,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hesap',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        if (validatePasswords()) {
                          saveDataToFirestore(context);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Geçerli şifre gereklidir')),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 8,
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Kaydet',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      'Profil Resmi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: _selectAndUploadFile,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Resim Seç',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                ElevatedButton(
                  onPressed: () {
                    uploadSelectedFile(context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Yükle',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 8),
                if (selectedFileName != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Seçilen dosya: $selectedFileName'),
                  ),
                SizedBox(height: 16),
                TextField(
                  controller: adController,
                  decoration: InputDecoration(
                    labelText: 'Ad',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: kullaniciAdiController,
                  decoration: InputDecoration(
                    labelText: 'Kullanıcı Adı',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: epostaController,
                  decoration: InputDecoration(
                    labelText: 'E-posta',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 8),
                TextField(
                  controller: sifreController,
                  decoration: InputDecoration(
                    labelText: 'Şifre',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true, // Şifre alanını gizlemek için
                ),
                SizedBox(height: 8),
                TextField(
                  controller: yeniSifreController,
                  decoration: InputDecoration(
                    labelText: 'Yeni Şifre',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true, // Şifre alanını gizlemek için
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final String uploadedImageUrl;

  const ProfilePage({Key? key, required this.uploadedImageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil Sayfası'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Profil Resmi',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            if (uploadedImageUrl.isNotEmpty)
              Image.network(
                uploadedImageUrl,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
          ],
        ),
      ),
    );
  }
}
