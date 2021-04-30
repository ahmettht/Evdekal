import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class testsonucsitesi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Yonlendir(),
    );
  }
}

class Yonlendir extends StatelessWidget {
  launchURL() {
    launch('https://enabiz.gov.tr/PcrTestSonuc/Index');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Covid-19 Test Sonucu Sitesi',
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
                child: Text('Test Sonucu Sitesine gitmek için tıklayınız'),
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
