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
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: [
              Align(
                alignment: const FractionalOffset(0.90, 0.21),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 0.25 * constraints.maxWidth,
                      height: 0.25 * constraints.maxWidth,
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
                      bottom: 0.73 * constraints.maxHeight,
                      child: GestureDetector(
                        onTap: () {
                          // Düzenleme ikonuna basıldığında gerçekleştirilecek işlemler
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromRGBO(34, 54, 26, 1),
                          ),
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
                top: 0.12 * constraints.maxHeight,
                right: 0.04 * constraints.maxWidth,
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
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
              Positioned(
                right: 0.33 * constraints.maxWidth,
                top: 0.187 * constraints.maxHeight,
                child: Text(
                  '@$username',
                  style: GoogleFonts.dosis(
                    textStyle: const TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 0.373 * constraints.maxHeight,
                left: 0.418 * constraints.maxWidth,
                child: Container(
                  width: 0.313 * constraints.maxWidth,
                  height: 0.313 * constraints.maxWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0.213 * constraints.maxHeight,
                        left: 0.085 * constraints.maxWidth,
                        child: Text(
                          'Toplam Puan',
                          style: GoogleFonts.pacifico(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 8, 66, 33),
                            fontSize: 0.053 * constraints.maxWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0.373 * constraints.maxHeight,
                left: 0.028 * constraints.maxWidth,
                child: Container(
                  width: 0.313 * constraints.maxWidth,
                  height: 0.313 * constraints.maxWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0.213 * constraints.maxHeight,
                        left: 0.085 * constraints.maxWidth,
                        child: Text(
                          'Günlük Seri',
                          style: GoogleFonts.pacifico(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 8, 66, 33),
                            fontSize: 0.053 * constraints.maxWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0.693 * constraints.maxHeight,
                left: 0.418 * constraints.maxWidth,
                child: Container(
                  width: 0.313 * constraints.maxWidth,
                  height: 0.313 * constraints.maxWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0.213 * constraints.maxHeight,
                        left: 0.170 * constraints.maxWidth,
                        child: Text(
                          'Sıralama',
                          style: GoogleFonts.pacifico(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 8, 66, 33),
                            fontSize: 0.053 * constraints.maxWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 0.693 * constraints.maxHeight,
                left: 0.028 * constraints.maxWidth,
                child: Container(
                  width: 0.313 * constraints.maxWidth,
                  height: 0.313 * constraints.maxWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 0.213 * constraints.maxHeight,
                        left: 0.042 * constraints.maxWidth,
                        child: Text(
                          'Tamamlanan Görev',
                          style: GoogleFonts.pacifico(
                            fontWeight: FontWeight.w600,
                            color: const Color.fromARGB(255, 8, 66, 33),
                            fontSize: 0.053 * constraints.maxWidth,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
