import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Arama',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                  onChanged: (value) {
                    // Arama çubuğunda değer değiştiğinde yapılacak işlemler buraya gelecek.
                  },
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'images/ayi.jpeg',
                        width: 150,
                        height: 150,
                        fit: BoxFit.scaleDown,
                      ),
                      const SizedBox(height: 10),
                      const Text('Bozayı Safari Şapka - Bej'), // Added caption for the image
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Icon(Icons.star),
                          SizedBox(width: 5),
                          Text('1000'),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Satın Al butonuna basıldığında yapılacak işlemler buraya gelecek.
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Butonun arka plan rengini yeşil olarak ayarlar
                        ),
                        child: const Text('Satın Al'),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      Image.asset(
                        'images/sincap.jpeg',
                        width: 150,
                        height: 150,
                        fit: BoxFit.scaleDown,
                      ),
                      const SizedBox(height: 10),
                      const Text('Sincap SuCo. Matara'), // Added caption for the image
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Icon(Icons.star),
                          SizedBox(width: 5),
                          Text('1000'),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Satın Al butonuna basıldığında yapılacak işlemler buraya gelecek.
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Butonun arka plan rengini yeşil olarak ayarlar
                        ),
                        child: const Text('Satın Al'),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        'images/yengec.jpeg',
                        width: 150,
                        height: 150,
                        fit: BoxFit.scaleDown,
                      ),
                      const SizedBox(height: 10),
                      const Text('Yengeç Çorap - Lacivert'), // Added caption for the image
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Icon(Icons.star),
                          SizedBox(width: 5),
                          Text('1000'),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Satın Al butonuna basıldığında yapılacak işlemler buraya gelecek.
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Butonun arka plan rengini yeşil olarak ayarlar
                        ),
                        child: const Text('Satın Al'),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      Image.asset(
                        'images/zurafa.jpeg',
                        width: 150,
                        height: 150,
                        fit: BoxFit.scaleDown,
                      ),
                      const SizedBox(height: 10),
                      const Text('Zürafa Oversize T-shirt'), // Removed "- Açık Sarı" from the text
                      const Text('Açık Sarı'), // Added a separate Text widget for "Açık Sarı"
                      const SizedBox(height: 10),
                      const Row(
                        children: [
                          Icon(Icons.star),
                          SizedBox(width: 5),
                          Text('1000'),
                        ],
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Satın Al butonuna basıldığında yapılacak işlemler buraya gelecek.
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green, // Butonun arka plan rengini yeşil olarak ayarlar
                        ),
                        child: const Text('Satın Al'),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

