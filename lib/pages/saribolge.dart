import 'package:flutter/material.dart';

class saribolge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'ORTA RİSKLİ İLLER (SARI)',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 20,
            ),
            Expanded(flex: 1,
              child: Text(
                  '''Uşak, Şanlıurfa, Diyarbakır, Batman, Mardin, Muş, Bitlis, Van, Siirt, Hakkari
                   ''',style: TextStyle(color: Colors.red,fontSize: 15.0)),
            ),
            Expanded(flex:2,
              child: Text(
                  '''Hafta sonu sokağa çıkma kısıtlaması kaldırıldı.
İlk öğretim ile 8'inci ve 12'nci sınıfların yanı sıra ortaokullar ve liseler dahil tüm kademelerde yüz yüze eğitim-öğretim yapılacak. Sınavlar yüz yüze yapılacak.
Hafta içi akşam 21.00 ile sabah 05.00 arası sokağa çıkma kısıtlaması devam edecek.
Kafe ve restoranlar sabah 07.00 ile akşam 19.00 saatleri arasında, yüzde 50 kapasiteyle açılabilecek.
Halı saha, yüzme havuzu vb. tesisler, sabah 07.00 ile akşam 19.00 arasında açılabilecek.
Valiliğin aykırı bir kararı yoksa kamuda çalışma saatleri normale dönecek.
Nikah ve düğünler 100 kişiyi geçmemek kaydıyla yapılabilecek.
Sivil toplum kuruluşları, meslek odaları, kooperatifler vb. kuruluşların genel kurulları 300 kişiyi geçmeyecek şekilde yapılabilecek.
              '''),
            )
          ],
        ),
      ),
    );
  }
}