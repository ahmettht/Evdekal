import 'package:flutter/material.dart';
class hakkinda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Hakkında',style: TextStyle(color: Colors.white),),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3301456 kodlu Mobil Programlama dersli kapsamında 193301033 numaralı Ahmet Taha Turanlı tarafından 30 Nisan 2021 günü yapılmıştır.'),
              ),
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Colors.white54,
                backgroundImage: AssetImage('assets/images/iletisim-foto.jpg'),
              ),Container(
                decoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.white,borderRadius: BorderRadiusDirectional.circular(10.0)),
                margin: EdgeInsets.symmetric(
                    horizontal: 45.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget> [
                    Icon(
                      Icons.email,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('ahmettaha08@gmail.com',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 15.0,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(shape: BoxShape.rectangle,color: Colors.white, borderRadius: BorderRadiusDirectional.circular(10.0)),
                margin: EdgeInsets.symmetric(
                    horizontal: 45.0),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 50.0,
                    ),
                    Text('000000000000',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                      ),
                    )
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


