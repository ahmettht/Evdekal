
import 'package:flutter/material.dart';
import 'package:evdekal/anasayfa.dart';
import 'package:evdekal/hakkinda.dart';
import 'package:evdekal/Koronadannasilkorunuruz.dart';
import 'package:evdekal/platform.dart';
import 'package:evdekal/testsonucsitesi.dart';
import 'package:evdekal/kirmizibolge.dart';
import 'package:evdekal/turuncubolge.dart';
import 'package:evdekal/saribolge.dart';
import 'package:evdekal/mavibolge.dart';
import 'package:evdekal/sokagacikmayasaklari.dart';
import 'package:evdekal/yasaklardanmuaf.dart';
import 'package:evdekal/giris.dart';


void main() {
  runApp(EvdekalApp());
}

class EvdekalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Ubuntu'),
      home: giris(),
      routes: rotalar,
      debugShowCheckedModeBanner: false,
    );
  }
}

var rotalar = <String, WidgetBuilder>{
  "/giris": (BuildContext context) => giris(),
  "/anasayfa": (BuildContext context) => anasayfa(),
  "/hakkinda": (BuildContext context) => hakkinda(),
  "/Koronadannasilkorunuruz": (BuildContext context) => Koronadannasilkorunuruz(),
  "/platform": (BuildContext context) => platform(),
  "/testsonucsitesi": (BuildContext context) => testsonucsitesi(),
  "/kirmizibolge": (BuildContext context) => kirmizibolge(),
  "/turuncubolge": (BuildContext context) => turuncubolge(),
  "/saribolge": (BuildContext context) => saribolge(),
  "/mavibolge": (BuildContext context) => mavibolge(),
  "/sokagacikmayasaklari": (BuildContext context) => sokagacikmayasaklari(),
  "/yasaklardanmuaf": (BuildContext context) => yasaklardanmuaf(),
};
