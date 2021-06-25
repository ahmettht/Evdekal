import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class covidsozlugu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Yonlendir(),
    );
  }
}

class Yonlendir extends StatelessWidget {
  launchURL() {
    launch('https://covid19.saglik.gov.tr/TR-66394/covid-19-sozlugu.html');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Covid-19 Sözlüğü',
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
                child: Text('Covid Sözlüğüne gitmek için tıklayınız'),
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