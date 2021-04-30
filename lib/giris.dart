import 'package:evdekal/User.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class giris extends StatefulWidget {
  @override
  _girisState createState() => _girisState();
}

class _girisState extends State<giris> {
  String adSoyad;
  String Sehirismi;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Adınız ve Soyadınız:',
                  style: TextStyle(color: Colors.red),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Adınızı ve Soyadınızı giriniz',
                    ),
                    keyboardType: TextInputType.text,
                    inputFormatters: [
                      FilteringTextInputFormatter.singleLineFormatter
                    ],
                      onChanged: (String value) {
                        setState(() {
                          adSoyad = value;
                        });
                      }
                  ),
                ),
                Text('Şehriniz', style: TextStyle(color: Colors.red)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Şehrinizi giriniz',
                      ),
                      keyboardType: TextInputType.text,
                      inputFormatters: [
                        FilteringTextInputFormatter.singleLineFormatter
                      ],
                      onChanged: (String value) {
                        setState(() {
                          Sehirismi = value;
                        });
                      }),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      User user=User(adsoyadU: adSoyad,sehirismiU: Sehirismi);
                      Navigator.pushNamed(context, "/anasayfa", arguments: user);
                    },
                    child: Text(
                      'Giriş Yap',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
