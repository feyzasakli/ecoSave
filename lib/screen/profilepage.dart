import 'package:eco/screen/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String username = 'iremozc4n';
  final IconData settingsIcon = Icons.settings;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height,
          ),
          child: IntrinsicHeight(
            child: Stack(
              children: [

                Align(
                  alignment: const FractionalOffset(0.80, 0.08),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 0.25 * MediaQuery.of(context).size.width,
                        height: 0.25 * MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(top: 0.5, right: 2.0),
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
                        bottom: 0.90 * MediaQuery.of(context).size.height,
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
                  top: 0.02 * MediaQuery.of(context).size.height,
                  right: 0.02 * MediaQuery.of(context).size.width,
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
                  right: 0.55 * MediaQuery.of(context).size.width,
                  top: 0.100 * MediaQuery.of(context).size.height,
                  child: Text(
                    '@$username',
                    style: GoogleFonts.dosis(
                      textStyle: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 0.253 * MediaQuery.of(context).size.height,
                  left: 0.558 * MediaQuery.of(context).size.width,
                  child: Container(
                    width: 0.370 * MediaQuery.of(context).size.width,
                    height: 0.370 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0.180 * MediaQuery.of(context).size.height,
                          left: 0.070 * MediaQuery.of(context).size.width,
                          child: Text(
                            'Toplam Puan',
                            style: GoogleFonts.pacifico(
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 8, 66, 33),
                              fontSize: 0.04 * MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0.253 * MediaQuery.of(context).size.height,
                  left: 0.040 * MediaQuery.of(context).size.width,
                  child: Container(
                    width: 0.370 * MediaQuery.of(context).size.width,
                    height: 0.370 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0.180 * MediaQuery.of(context).size.height,
                          left: 0.048 * MediaQuery.of(context).size.width,
                          child: Text(
                            'Günlük Seri',
                            style: GoogleFonts.pacifico(
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 8, 66, 33),
                              fontSize: 0.04 * MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0.513 * MediaQuery.of(context).size.height,
                  left: 0.558 * MediaQuery.of(context).size.width,
                  child: Container(
                    width: 0.370 * MediaQuery.of(context).size.width,
                    height: 0.370 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0.180 * MediaQuery.of(context).size.height,
                          left: 0.080 * MediaQuery.of(context).size.width,
                          child: Text(
                            'Sıralama',
                            style: GoogleFonts.pacifico(
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 8, 66, 33),
                              fontSize: 0.04 * MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0.513 * MediaQuery.of(context).size.height,
                  left: 0.048 * MediaQuery.of(context).size.width,
                  child: Container(
                    width: 0.370 * MediaQuery.of(context).size.width,
                    height: 0.370 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0.180 * MediaQuery.of(context).size.height,
                          left: 0.030 * MediaQuery.of(context).size.width,
                          child: Text(
                            'Tamamlanan Görev',
                            style: GoogleFonts.pacifico(
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 8, 66, 33),
                              fontSize: 0.04 * MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0.800 * MediaQuery.of(context).size.height,
                  left: 0.073 * MediaQuery.of(context).size.width,
                  child: Container(
                    width: 0.850 * MediaQuery.of(context).size.width,
                    height: 0.300 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.blueGrey,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}