
import 'package:eco/screen/settings.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            16.0,
            16.0,
            80.0,
            16.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Profil',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SettingsPage(backgroundColor: Colors.green, gradientColors: [], titleText: '', labelText: '',)),
                  );
                },
                backgroundColor: Colors.blue,
                child: const Icon(Icons.settings),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
