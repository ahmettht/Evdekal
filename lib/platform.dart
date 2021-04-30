import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class platform extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Yonlendir(),
    );
  }
}
class Yonlendir extends StatelessWidget {
  launchURL() {
    launch('https://covid19.saglik.gov.tr');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Covid-19 Bilgilendirme Platformu',style: TextStyle(color: Colors.white),),),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: launchURL,
                child: Text('Platforma gitmek için tıklayınız'),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red),),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/anasayfa');
                },
                child: Text('Anasayfaya dönmek için tıklayınız'),
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}