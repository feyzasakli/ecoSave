import 'package:eco/screen/settings.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:geolocator/geolocator.dart';


class ProfilePage extends StatefulWidget {
  final String uploadedImageUrl;

  const ProfilePage({Key? key, required this.uploadedImageUrl}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final String username = 'iremozc4n';
  final IconData settingsIcon = Icons.settings;
  String? pollutionData;
  String? airQuality;

  @override
  void initState() {
    super.initState();
    fetchPollutionData();
  }

  Future<void> fetchPollutionData() async {
    try {
      // Konumu al
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      // Hava kirliliği verilerini API'den al
      String apiUrl =
          'https://api.openweathermap.org/data/2.5/air_pollution?lat=${position.latitude}&lon=${position.longitude}&appid=ef04ae610d6f7c3e159bcc92aea64e15';
      http.Response response = await http.get(Uri.parse(apiUrl));
      Map<String, dynamic> jsonData = json.decode(response.body);

      // Hava kirliliği verisini işle ve state'i güncelle
      int aqi = jsonData['list'][0]['main']['aqi'];

      String airQuality = getAirQuality(aqi); // Hava kalitesi endeksine göre temiz/kötü ifadesini al

      List<Map<String, dynamic>> pollutants = jsonData['list'][0]['components'];
      String formattedPollutionData = '';

      // Ayrıntılı hava kirliliği verilerini oluştur
      for (var pollutant in pollutants) {
        String name = pollutant['name'];
        double value = pollutant['value'];
        String unit = pollutant['unit'];
        formattedPollutionData += '$name: $value $unit\n';
      }

      setState(() {
        pollutionData =
        'Hava Kirliliği Endeksi: $aqi\nHava Kalitesi: $airQuality\n\n$formattedPollutionData';
      });
    } catch (e) {
      if (kDebugMode) {
        print('Hava kirliliği verileri alınamadı: $e');
      }
    }
  }

  String getAirQuality(int aqi) {
    if (aqi <= 50) {
      return 'Temiz';
    } else if (aqi <= 100) {
      return 'İyi';
    } else if (aqi <= 150) {
      return 'Orta';
    } else if (aqi <= 200) {
      return 'Kötü';
    } else if (aqi <= 300) {
      return 'Çok Kötü';
    } else {
      return 'Tehlikeli';
    }
  }

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
                Container(
                  color: const Color.fromARGB(255, 170, 236, 177),
                ),
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
                        child: Image.network(
                          widget.uploadedImageUrl,
                          fit: BoxFit.cover,
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
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                Positioned(
                  top: 0.253 * MediaQuery.of(context).size.height,
                  left: 0.528 * MediaQuery.of(context).size.width,
                  child: Container(
                    width: 0.380 * MediaQuery.of(context).size.width,
                    height: 0.380 * MediaQuery.of(context).size.width,
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
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 8, 66, 33),
                              fontSize: 0.04 *
                                  MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0.253 * MediaQuery.of(context).size.height,
                  left: 0.070 * MediaQuery.of(context).size.width,
                  child: Container(
                    width: 0.380 * MediaQuery.of(context).size.width,
                    height: 0.380 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: 0.180 * MediaQuery.of(context).size.height,
                          left: 0.058 * MediaQuery.of(context).size.width,
                          child: Text(
                            'Günlük Seri',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 8, 66, 33),
                              fontSize: 0.04 *
                                  MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0.513 * MediaQuery.of(context).size.height,
                  left: 0.528 * MediaQuery.of(context).size.width,
                  child: Container(
                    width: 0.380 * MediaQuery.of(context).size.width,
                    height: 0.380 * MediaQuery.of(context).size.width,
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
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 8, 66, 33),
                              fontSize: 0.04 *
                                  MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0.513 * MediaQuery.of(context).size.height,
                  left: 0.070 * MediaQuery.of(context).size.width,
                  child: Container(
                    width: 0.380 * MediaQuery.of(context).size.width,
                    height: 0.380 * MediaQuery.of(context).size.width,
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
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: const Color.fromARGB(255, 8, 66, 33),
                              fontSize: 0.04 *
                                  MediaQuery.of(context).size.width,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0.780 * MediaQuery.of(context).size.height,
                  left: 0.073 * MediaQuery.of(context).size.width,
                  child: Container(
                    width: 0.850 * MediaQuery.of(context).size.width,
                    height: 0.300 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white.withOpacity(0.5),
                      image: const DecorationImage(
                        image: AssetImage('images/nature2.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: FutureBuilder(
                      future: _getAirPollutionData(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          // Handle the received data
                          var data = snapshot.data as Map<String, dynamic>;
                          var aqi = data['list'][0]['main']['aqi'];
                          return Center(
                            child: Text(
                                'Hava Kirliliği Endeksi: $aqi\nHava Kalitesi: ${getAirQuality(aqi)}',
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                            ),
                                );
                            } else if (snapshot.hasError) {
                            // Handle error
                            return const Center(
                            child: Text(
                            'Hava kirliliği verileri alınamadı',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                        } else {
                        // Show a loading spinner while waiting for the data
                        return const Center(
                        child: CircularProgressIndicator(),
                        );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<dynamic> _getAirPollutionData() async {
    // Get the current location
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
    );

    // Make the API request
    String apiKey = 'ef04ae610d6f7c3e159bcc92aea64e15';
    String url =
        'https://api.openweathermap.org/data/2.5/air_pollution?lat=${position.latitude}&lon=${position.longitude}&appid=$apiKey';
    http.Response response = await http.get(Uri.parse(url));
    Map<String, dynamic> jsonData = json.decode(response.body);

    return jsonData;
  }
}
