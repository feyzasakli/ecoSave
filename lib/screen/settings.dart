// ignore_for_file: library_private_types_in_public_api, use_build_context_synchronously, prefer_const_constructors

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


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
  final adController = TextEditingController();
  final kullaniciAdiController = TextEditingController();
  final epostaController = TextEditingController();
  final sifreController = TextEditingController();
  final yeniSifreController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _firestore = FirebaseFirestore.instance;
    getDataFromFirestore();
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

  Future<void> _selectAndUploadFile() async {
    final result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        selectedFileName = result.files.first.path;
      });

      await uploadFileToStorage();
    }
  }

  Future<void> uploadFileToStorage() async {
    if (selectedFileName != null) {
      try {
        final File file = File(selectedFileName!);
        final String fileName = file.path.split('/').last;

        final Reference storageRef = FirebaseStorage.instance
            .ref()
            .child('profil_resimleri/$fileName');

        final UploadTask uploadTask = storageRef.putFile(file);

        await uploadTask.whenComplete(() async {
          final String downloadURL = await storageRef.getDownloadURL();

          setState(() {
            uploadedImageUrl = downloadURL;
          });

          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Dosya başarıyla yüklendi')),
          );
        });
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Dosya yüklenirken bir hata oluştu')),
        );
      }
    }
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF17A3A2),
                Color(0xFF52C077),
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
                    Text(
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
                        'Resim Seç ve Yükle',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
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
                ),
                SizedBox(height: 8),
                TextField(
                  controller: yeniSifreController,
                  decoration: InputDecoration(
                    labelText: 'Yeni Şifre',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}