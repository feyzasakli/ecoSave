// ignore_for_file: deprecated_member_use, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';




final Uri _url1 = Uri.parse('https://bepeople.co/');
final Uri _url2 = Uri.parse('https://mavi.com/');
final Uri _url3 = Uri.parse('https://re-clo.com.tr/');
final Uri _url4 = Uri.parse('https://www.wwf.org.tr/');


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
              TypeAheadField(
                textFieldConfiguration: TextFieldConfiguration(
                  autofocus: false,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Mağaza arayın',
                    border: OutlineInputBorder(),
                  ),
                ),
                suggestionsCallback: (pattern) async {
                  // Burada mağaza verilerini geri döndürmek için bir API çağrısı yapabilirsiniz
                  // Örneğin, mağaza adları bir API'den getirilebilir
                  return [
                    'BE PEOPLE',
                    'Mavi',
                    're-clo',
                    'WWF',
                  ].where((store) => store.toLowerCase().contains(pattern.toLowerCase())).toList();
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    title: Text(suggestion),
                    onTap: () {
                      if (suggestion == 'BE PEOPLE') {
                        _showCouponDialog1(context, suggestion);
                      } else if (suggestion == 'Mavi') {
                        _showCouponDialog2(context, suggestion);
                      } else if (suggestion == 're-clo') {
                        _showCouponDialog3(context, suggestion);
                      } else if (suggestion == 'WWF') {
                        _showCouponDialog4(context, suggestion);
                      }
                    },
                  );
                },
                onSuggestionSelected: (String suggestion) {
                  if (suggestion == 'BE PEOPLE') {
                    _showCouponDialog1(context, suggestion);
                  } else if (suggestion == 'Mavi') {
                    _showCouponDialog2(context, suggestion);
                  } else if (suggestion == 're-clo') {
                    _showCouponDialog3(context, suggestion);
                  } else if (suggestion == 'WWF') {
                    _showCouponDialog4(context, suggestion);
                  }
                },
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'images/bep.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'BE PEOPLE',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          _showCouponDialog1(context, 'Coupon Code 1');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: const Text('Kuponu Görüntüle'),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'images/mavi.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Mavi',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          _showCouponDialog2(context, 'MAVİ25PUAN                                                                                                                                     50-70 arası puanı olanlar bu kupon kodundan yararlanabilir: PUANINIZ YETERLİ DEĞİL!');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: const Text('Kuponu Görüntüle'),
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
                      Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'images/reclo.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        're-clo',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          _showCouponDialog3(context, 're-clo30PUAN              70-80 arası puanı olanlar bu kupon kodundan yararlanabilir: PUANINIZ YETERLİ DEĞİL!');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: const Text('Kuponu Görüntüle'),
                      ),
                    ],
                  ),
                  const SizedBox(width: 20),
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'images/wwf.jpeg',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'WWF',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          _showCouponDialog4(context, 'WWF40PUAN                     80-90 arası puanı olanlar bu kupon kodundan yararlanabilir: PUANINIZ YETERLİ DEĞİL!');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                        ),
                        child: const Text('Kuponu Görüntüle'),
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

  Future<void> _launchUrl1() async {
    if (!await launchUrl(_url1)) {
      throw Exception('Could not launch $_url1');
    }
  }


  void _showCouponDialog1(BuildContext context, String couponCode) {
    int starCount = 5; // Yıldız simgesindeki sayıyı gerçek değerle değiştirin

    if (starCount >= 10) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Kupon Kodu: $couponCode'),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: couponCode));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Kupon kodu kopyalandı'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Kuponu Kopyala',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      _launchUrl1();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Siteye Git',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            title: const Text('Uyarı'),
            content: const Text(
                'Bu kupon kodunu kullanabilmeniz için toplam puanınız 50\'dan fazla olmalıdır.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Tamam',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ],
          );
        },
      );
    }
  }


  void _showCouponDialog2(BuildContext context, String couponCode) {
    int starCount = 8; // Replace with the actual star count

    if (starCount >= 8) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Kupon Kodu: $couponCode'),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: couponCode));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Kupon kodu kopyalandı'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Kuponu Kopyala',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      _launchUrl2();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Siteye Git',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            title: const Text('Uyarı'),
            content: const Text(
                'Bu kupon kodunu kullanabilmeniz için toplam puanınız 8\'den fazla olmalıdır.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: TextButton.styleFrom(
                backgroundColor: Colors.green,
                ),
                child: const Text('Tamam',
                  style: TextStyle(color: Colors.white), // Change the button text color to white
                ),




              ),
            ],
          );
        },
      );
    }
  }

  void _showCouponDialog3(BuildContext context, String couponCode) {
    int starCount = 8; // Replace with the actual star count

    if (starCount >= 8) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Kupon Kodu: $couponCode'),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: couponCode));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Kupon kodu kopyalandı'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Kuponu Kopyala',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      _launchUrl3();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Siteye Git',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Uyarı'),
            content: const Text(
                'Bu kupon kodunu kullanabilmeniz için toplam puanınız 8\'den fazla olmalıdır.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Tamam'),
              ),
            ],
          );
        },
      );
    }
  }

  void _showCouponDialog4(BuildContext context, String couponCode) {
    int starCount = 5; // Replace with the actual star count

    if (starCount >= 5) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('Kupon Kodu: $couponCode'),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: couponCode));
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Kupon kodu kopyalandı'),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Kuponu Kopyala',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      _launchUrl4();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Siteye Git',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Uyarı'),
            content: const Text(
                'Bu kupon kodunu kullanabilmeniz için toplam puanınız 5\'ten fazla olmalıdır.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Tamam'),
              ),
            ],
          );
        },
      );
    }
  }
}


Future<void> _launchUrl2() async {
  if (!await launchUrl(_url2)) {
    throw Exception('Could not launch $_url2');
  }
}

Future<void> _launchUrl3() async {
  if (!await launchUrl(_url3)) {
    throw Exception('Could not launch $_url3');
  }
}

Future<void> _launchUrl4() async {
  if (!await launchUrl(_url4)) {
    throw Exception('Could not launch $_url4');
  }
}