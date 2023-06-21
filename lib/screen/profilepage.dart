import 'package:eco/screen/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);
  final String username = 'iremozc4n';
  final IconData settingsIcon = Icons.settings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Align(
            alignment: const FractionalOffset(0.90, 0.21),
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 150.0,
                  height: 150.0,
                  padding: const EdgeInsets.only(top: 5.0, right: 1.0),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 100.0,
                  ),
                ),
                Positioned(
                  right: 1.0,
                  bottom: 110.0,
                  child: GestureDetector(
                    onTap: () {
                      // Düzenleme ikonuna basıldığında gerçekleştirilecek işlemler
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(34, 54, 26, 1)),
                      child: const Icon(
                        Icons.edit,
                        size: 40.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 60.0,
            right: 10.0,
            child: Transform.scale(
              scale: 1.5,
              child: IconButton(
                icon: Icon(settingsIcon),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SettingsPage(
                              backgroundColor: Colors.green,
                              gradientColors: [],
                              titleText: '',
                              labelText: '',
                            )),
                  );
                },
              ),
            ),
          ),
          Positioned(
            right: 200.0,
            top: 140.0,
            child: Text(
              '@$username',
              style: GoogleFonts.dosis(
                  textStyle: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              )),
            ),
          ),
          Positioned(
            top: 280.0,
            left: 220.0,
            child: Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 160.0,
                    left: 40.0,
                    child: Text(
                      'Toplam Puan',
                      style: GoogleFonts.pacifico(
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 8, 66, 33),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 280.0,
            left: 10.0,
            child: Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 160.0,
                    left: 40.0,
                    child: Text(
                      'Günlük Seri',
                      style: GoogleFonts.pacifico(
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 8, 66, 33),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 500.0,
            left: 220.0,
            child: Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 160.0,
                    left: 60.0,
                    child: Text(
                      'Sıralama',
                      style: GoogleFonts.pacifico(
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 8, 66, 33),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 500.0,
            left: 10.0,
            child: Container(
              width: 200.0,
              height: 200.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 160.0,
                    left: 10.0,
                    child: Text(
                      'Tamamlanan Görev',
                      style: GoogleFonts.pacifico(
                        fontWeight: FontWeight.w600,
                        color: const Color.fromARGB(255, 8, 66, 33),
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
