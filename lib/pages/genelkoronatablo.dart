import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class genelkoronatablo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Yonlendir(),
    );
  }
}

class Yonlendir extends StatelessWidget {
  launchURL() {
    launch('https://covid19.saglik.gov.tr/TR-66935/genel-koronavirus-tablosu.html');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Genel Koronavirüs Tablosu',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: launchURL,
                child: Text('Genel Koronavirüs Tablosuna gitmek için tıklayınız'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}