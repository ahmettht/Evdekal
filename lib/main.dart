import 'package:evdekal/pages/covid19.dart';
import 'package:evdekal/pages/posts_view.dart';
import 'package:evdekal/reports/LineChartSample4.dart';
import 'package:evdekal/widgets/on_board.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:evdekal/pages/anasayfa.dart';
import 'package:evdekal/pages/hakkinda.dart';
import 'package:evdekal/pages/Koronadannasilkorunuruz.dart';
import 'package:evdekal/pages//platform.dart';
import 'package:evdekal/pages/testsonucsitesi.dart';
import 'package:evdekal/pages/kirmizibolge.dart';
import 'package:evdekal/pages/turuncubolge.dart';
import 'package:evdekal/pages/saribolge.dart';
import 'package:evdekal/pages/mavibolge.dart';
import 'package:evdekal/pages/sokagacikmayasaklari.dart';
import 'package:evdekal/pages/yasaklardanmuaf.dart';
import 'package:evdekal/pages/covidsozlugu.dart';
import 'package:evdekal/pages/genelkoronatablo.dart';
import 'package:provider/provider.dart';
import 'package:evdekal/services/auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(EvdekalApp());
}

class EvdekalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<Auth>(
      create: (context) => Auth(),
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Ubuntu',
          primarySwatch: Colors.red,
        ),
        home: OnBoardWidget(),
        routes: rotalar,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

var rotalar = <String, WidgetBuilder>{
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
  "/covidsozlugu": (BuildContext context) => covidsozlugu(),
  "/genelkoronatablo": (BuildContext context) => genelkoronatablo(),
  "/grafik": (BuildContext context) => LineChartSample4(),
  "/covid19": (BuildContext context) => covid19(),
  "/posts": (BuildContext context) => PostsView(),

};
