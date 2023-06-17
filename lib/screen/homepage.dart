import 'package:eco/day/carsamba.dart';
import 'package:eco/day/cuma.dart';
import 'package:eco/day/cumartesi.dart';
import 'package:eco/day/pazar.dart';
import 'package:eco/day/pazartesi.dart';
import 'package:eco/day/persembe.dart';
import 'package:eco/day/sali.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final DateTime currentDate = DateTime.now();
  final List<String> weekDays = [
    'Pzt',
    'Sal',
    'Çar',
    'Per',
    'Cum',
    'Cmt',
    'Paz'
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final height = constraints.maxHeight;

          return Stack(
            children: [
              Container(
                width: width,
                height: height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'images/background.png'), // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                top: height * 0.12,
                left: width * 0.22,
                child: _buildButton(context, 'Pzt', Colors.green,
                    size: 60, clickable: true, page: const PazartesiPage()),
              ),
              Positioned(
                top: height * 0.12,
                left: width * 0.70,
                child: _buildButton(context, 'Sal', Colors.green,
                    size: 60, clickable: true, page: const SaliPage()),
              ),
              Positioned(
                top: height * 0.35,
                left: width * 0.5,
                child: _buildButton(context, 'Çar', Colors.green,
                    size: 60, clickable: true, page: const CarsambaPage()),
              ),
              Positioned(
                top: height * 0.6,
                left: width * 0.22,
                child: _buildButton(context, 'Per', Colors.green,
                    size: 60,
                    clickable: currentDate.weekday >= 4,
                    page: const PersembePage()),
              ),
              Positioned(
                top: height * 0.6,
                left: width * 0.70,
                child: _buildButton(context, 'Cum', Colors.green,
                    size: 60,
                    clickable: currentDate.weekday >= 5,
                    page: const CumaPage()),
              ),
              Positioned(
                top: height * 0.82,
                left: width * 0.70,
                child: _buildButton(context, 'Cmt', Colors.green,
                    size: 60,
                    clickable: currentDate.weekday >= 6,
                    page: const CumartesiPage()),
              ),
              Positioned(
                top: height * 0.82,
                left: width * 0.22,
                child: _buildButton(context, 'Paz', Colors.green,
                    size: 60,
                    clickable: currentDate.weekday >= 7,
                    page: const PazarPage()),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildButton(
    BuildContext context,
    String day,
    Color color, {
    double size = 80,
    bool clickable = true,
    StatefulWidget? page,
  }) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: clickable
              ? () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => page!),
                  );
                }
              : null,
          borderRadius: BorderRadius.circular(size / 2),
          child: Center(
            child: Text(
              day,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
