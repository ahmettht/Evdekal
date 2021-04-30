import 'package:evdekal/YanMenu.dart';
import 'package:flutter/material.dart';
import 'package:evdekal/User.dart';

class anasayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    User user = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Evdekal',
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ),
              tooltip: 'Paylaş',
              onPressed: () {})
        ],
      ),
      drawer: YanMenu(),
      body: SafeArea(
        child: Center(
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(child: Image.asset('assets/images/anasayfa_resmi.jpg')),
              SizedBox(
                height: 10,
              ),
              Container(
                  height: 125,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadiusDirectional.circular(10.0),
                      color: Colors.red),
                  margin: EdgeInsets.all(10.0),
                  padding: EdgeInsets.all(10.0),
                  child: Text('''Hoşgeldiniz
${user.adsoyadU} 
${user.sehirismiU}
''',
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  )),
        ])),
      ),
    );
  }
}

