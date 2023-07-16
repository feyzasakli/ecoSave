import 'package:eco/login/sign_up.dart';
import 'package:eco/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'forgot_password_page.dart';

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email = '';
  String password = '';

  void googleSignIn() async {
    try {
      // Google hesabıyla giriş yapmak için GoogleSignIn nesnesini oluşturun
      final googleSignIn = GoogleSignIn();

      // Google hesabı seçme ekranını açın
      final account = await googleSignIn.signIn();

      // Eğer hesap seçilmediyse işlemi iptal edin
      if (account == null) return;

      // Hesap seçildiyse Firebase ile kimlik doğrulama yapın
      final googleAuth = await account.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Firebase'e kimlik doğrulama bilgileriyle giriş yapın
      await FirebaseAuth.instance.signInWithCredential(credential);

      // Seçilen e-posta adresini Firebase'e kaydedin (Firestore veya Realtime Database gibi bir hizmet kullanmanız gerekmektedir)
      final firebaseUser = FirebaseAuth.instance.currentUser;
      if (firebaseUser != null) {
        final email = firebaseUser.email;
        // E-posta adresini Firestore veya Realtime Database'e kaydedin
        // Örnek: await FirebaseFirestore.instance.collection('users').doc(firebaseUser.uid).set({'email': email});
      }

      // İşlem başarılı olduysa, istediğiniz sayfaya yönlendirin
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MyStatefulWidget()));
    } catch (error) {
      // İşlem sırasında bir hata oluştuğunda hata mesajını gösterin
      print('Google Girişi Hatası: $error');
    }
  }

  void emailIleGirisYap(String email, String password) async {
    try {
      // Firebase ile e-posta ve şifre ile kimlik doğrulama yapın
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Kullanıcının kaydının olup olmadığını kontrol edin
      if (userCredential.user == null) {
        // Kullanıcı kaydı bulunamadıysa, hata mesajı gösterin veya uygun bir işlem yapın
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text('Hata'),
              content: const Text('Kullanıcı bulunamadı.'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Tamam'),
                ),
              ],
            );
          },
        );
        return;
      }

      // Firestore veya Realtime Database kullanarak kullanıcının verilerini kaydedin
      final firebaseUser = userCredential.user;
      if (firebaseUser != null) {
        final email = firebaseUser.email;
        // E-posta adresini Firestore veya Realtime Database'e kaydedin
        // Örnek: await FirebaseFirestore.instance.collection('users').doc(firebaseUser.uid).set({'email': email});
      }

      // İşlem başarılı olduysa, istediğiniz sayfaya yönlendirin
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const MyStatefulWidget()),
      );
    } catch (error) {
      // İşlem sırasında bir hata oluştuğunda hata mesajını gösterin
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Hata'),
            content: Text('E-posta ile Giriş Hatası: $error'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Tamam'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/login1.png'),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      child: Container(
                        margin: const EdgeInsets.only(top: 290),
                        child: const Center(
                          child: Text(
                            "",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, .2),
                            blurRadius: 20.0,
                            offset: Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.grey),
                              ),
                            ),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  email = value;
                                });
                              },
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "E-posta",
                                hintStyle: TextStyle(
                                  color: Colors.grey[400],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              onChanged: (value) {
                                setState(() {
                                  password = value;
                                });
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Şifre",
                                hintStyle: TextStyle(
                                  color: Colors.grey[400],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 4),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ForgotPasswordPage(),
                            ),
                          );
                        },
                        child: const Text(
                          'Parolanızı mı unuttunuz?',
                          style: TextStyle(
                            color: Color.fromRGBO(239, 31, 112, 1),
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        emailIleGirisYap(email, password);
                      },
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          gradient: const LinearGradient(
                            colors: [
                              Color.fromRGBO(97, 203, 109, 1),
                              Color.fromRGBO(6, 160, 168, 0.6),
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Giriş",
                            style: TextStyle(
                              fontSize: 19,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignUp(),
                            ),
                          );
                        },
                        child: const Text(
                          'Bir hesabınız yok mu? Üye olun',
                          style: TextStyle(
                            color: Color.fromRGBO(239, 31, 112, 1),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            googleSignIn();
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            child: Image.asset(
                              'images/google.png',
                              height: 24,
                              width: 24,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            googleSignIn();
                          },
                          child: const Text(
                            'Google İle Giriş Yapın',
                            style: TextStyle(
                              color: Color.fromRGBO(239, 31, 112, 1),
                            ),
                          ),
                        ),


                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
