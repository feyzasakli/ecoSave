import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ProfilePage extends StatefulWidget {
  final String uploadedImageUrl;

  const ProfilePage({Key? key, required this.uploadedImageUrl}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 15,),
                        Text(
                          'test',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'test@test.com',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius:44,
                    backgroundImage: AssetImage('images/profile_picture.jpg'),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.access_time),
                      SizedBox(width: 8),
                      Text(
                        'Katılma Tarihi: Temmuz 2023',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    color: Colors.black,
                    height: 20,
                    thickness: 1,
                    indent: 0,
                    endIndent: 0,
                  ),
                  const SizedBox(height: 5),
                  SingleChildScrollView(
                    physics: const NeverScrollableScrollPhysics(),
                    child: GridView.count(
                      crossAxisCount: 2,
                      shrinkWrap: true,
                      childAspectRatio: 1.5,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.check_circle, color: Colors.blue),
                                  SizedBox(width: 8),
                                  Text(
                                      "2",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(fontSize: 20)
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Günlük Seri",
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 20,color: Colors.grey,),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.check_circle, color: Colors.blue),
                                  SizedBox(width: 8),
                                  Text(
                                      "8",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(fontSize: 20)
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Toplam Puan",
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 20,color: Colors.grey,),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.check_circle, color: Colors.blue),
                                  SizedBox(width: 8),
                                  Text(
                                      "5",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(fontSize: 20)
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Tamamlanan Görev",
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 20,color: Colors.grey,),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.4,
                          padding: const EdgeInsets.all(8.0),
                          margin: const EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 8),
                              Row(
                                children: [
                                  Icon(Icons.check_circle, color: Colors.blue),
                                  SizedBox(width: 8),
                                  Text(
                                      "3",
                                      textAlign: TextAlign.start,
                                      style: TextStyle(fontSize: 20)
                                  ),
                                ],
                              ),
                              SizedBox(height: 4),
                              Text(
                                "Sıralama",
                                textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 20,color: Colors.grey,),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        const SizedBox(height: 16),
                        Container(
                          alignment: Alignment.center,
                          width: 200,
                          height: 200,
                          child: SfRadialGauge(
                            axes: <RadialAxis>[
                              RadialAxis(
                                minimum: 0,
                                maximum: 5,
                                ranges: <GaugeRange>[
                                  GaugeRange(startValue: 0, endValue: 1, color: Colors.red),
                                  GaugeRange(startValue: 1, endValue: 2, color: Colors.orange),
                                  GaugeRange(startValue: 2, endValue: 3, color: Colors.yellow),
                                  GaugeRange(startValue: 3, endValue: 4, color: Colors.green),
                                  GaugeRange(startValue: 4, endValue: 5, color: Colors.blue),
                                ],
                                pointers: const <GaugePointer>[
                                  NeedlePointer(value: 3),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Positioned(
                          top: 90,
                          child: Text(
                            'Hava Kalitesi',
                            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
