import 'package:flutter/material.dart';

class kirmizibolge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text(
            'ÇOK YÜKSEK RİSKLİ İLLER: (KIRMIZI)',
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
                    '''Edirne, Kırklareli, Tekirdağ, İstanbul, Kocaeli, Sakarya, Yalova, Düzce, Bolu, Çanakkale, Bursa, Balıkesir, Bilecik, Ankara, Eskişehir, İzmir, Zonguldak, Bartın, Karabük, 
Kastamonu, Sinop, Çankırı, Kırıkkale, Kütahya, Çorum, Yozgat, Samsun, Amasya, Tokat, Ordu, Giresun, Trabzon, Rize, Artvin, Ardahan, Gümüşhane, Bayburt, Erzurum, Sivas, Erzincan,
Nevşehir, Aydın, Muğla, Antalya, Isparta, Konya, Aksaray, Niğde, Karaman, Mersin, Kayseri, Osmaniye, Kilis, Gaziantep, Malatya, Adıyaman, Elazığ, Iğdır'
                     ''',style: TextStyle(color: Colors.red,fontSize: 15.0)),
              ),
              Expanded(flex: 2,
                child: Text(
                    '''Hafta sonu sokağa çıkma kısıtlaması cumartesi ve pazar günleri sürecek.
Okul öncesi eğitim kurumlarında, ilkokullarda, 8. ve 12. sınıflarda yüz yüze eğitim yapılacak. Bunlar dışında sadece liselerdeki yüz yüze sınavlar yapılacak.
Hafta içi akşam 21.00 ile sabah 05.00 arası sokağa çıkma kısıtlaması devam edecek.
Kafe ve restoranlar sabah 07.00 ile akşam 19.00 saatleri arasında, yüzde 50 kapasiteyle açılabilecek.
Halı saha, yüzme havuzu vb. tesisler kapalı kalacak.
Valiliğin aykırı bir kararı yoksa kamuda çalışma saatleri normale dönecek.
Nikah ve düğünler 50 kişiyi geçmemek ve 1 saati aşmamak kaydıyla yapılabilecek.
Sivil toplum kuruluşları, meslek odaları, kooperatifler vb. kuruluşların genel kurulları, aksi bir karar yoksa yapılamayacak.
                '''),
              )
            ],
          ),
        ),
    );
  }
}
