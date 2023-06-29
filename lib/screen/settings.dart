import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';

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
  // ignore: library_private_types_in_public_api
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  String? selectedFileName;
  late FirebaseFirestore _firestore;
  final adController = TextEditingController();
  final kullaniciAdiController = TextEditingController();
  final epostaController = TextEditingController();
  final sifreController = TextEditingController();
  final yeniSifreController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _firestore = FirebaseFirestore.instance;
  }

  Future<void> saveDataToFirestore(BuildContext context) async {
    try {
      await _firestore.collection('users').doc('kullanici_id').set({
        'ad': adController.text,
        'kullanici_adi': kullaniciAdiController.text,
        'eposta': epostaController.text,
        'sifre': sifreController.text,
        'yeni_sifre': yeniSifreController.text,
      });

      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Veri kaydedildi')),
      );
    } catch (e) {
      if (kDebugMode) {
        print('Hata: $e');
      }
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Veri kaydedilemedi')),
      );
    }
  }

  Future<void> _selectFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        selectedFileName = result.files.first.name;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF17A3A2), // #17A3A2 on the left
                Color(0xFF52C077), // #52C077 on the right
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        title: const Text(
          "Profil Ayarları",
          style: TextStyle(
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
                    const Text(
                      'Hesap',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        saveDataToFirestore(context);
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 8,
                        backgroundColor: Colors.green,
                      ),
                      child: const Text(
                        'Kaydet',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Text(
                      'Profil Resmi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton(
                      onPressed: _selectFile,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        elevation: 4, // Gölgelendirme
                      ),
                      child: const Text(
                        'Resim Seç',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                if (selectedFileName != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text('Seçilen dosya: $selectedFileName'),
                  ),
                const SizedBox(height: 16),
                TextField(
                  controller: adController,
                  decoration: const InputDecoration(
                    labelText: 'Ad',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: kullaniciAdiController,
                  decoration: const InputDecoration(
                    labelText: 'Kullanıcı Adı',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: epostaController,
                  decoration: const InputDecoration(
                    labelText: 'E-posta',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: sifreController,
                  decoration: const InputDecoration(
                    labelText: 'Şifre',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 8),
                TextField(
                  controller: yeniSifreController,
                  decoration: const InputDecoration(
                    labelText: 'Yeni Şifre',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
