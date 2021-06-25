import 'package:flutter/material.dart';

class covid19 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Covid-19 Nedir',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text('''Yeni Koronavirüs Hastalığı (COVID-19), ilk olarak Çin’in Vuhan Eyaleti’nde Aralık ayının sonlarında solunum yolu belirtileri (ateş, öksürük, nefes darlığı) gelişen bir grup hastada yapılan araştırmalar sonucunda 13 Ocak 2020’de tanımlanan bir virüstür.

Salgın başlangıçta bu bölgedeki deniz ürünleri ve hayvan pazarında bulunanlarda tespit edilmiştir. Daha sonra insandan insana bulaşarak Vuhan başta olmak üzere Hubei eyaletindeki diğer şehirlere ve Çin Halk Cumhuriyeti’nin diğer eyaletlerine ve diğer dünya ülkelerine yayılmıştır.

Koronavirüsler, hayvanlarda veya insanlarda hastalığa neden olabilecek büyük bir virüs ailesidir. İnsanlarda, birkaç koronavirüsün soğuk algınlığından Orta Doğu Solunum Sendromu (MERS) ve Şiddetli Akut Solunum Sendromu (SARS) gibi daha şiddetli hastalıklara kadar solunum yolu enfeksiyonlarına neden olduğu bilinmektedir. Yeni Koronavirüs Hastalığına SAR-CoV-2 virüsü neden olur.

Belirtileri Nelerdir?
Belirtisiz olgular olabileceği bildirilmekle birlikte, bunların oranı bilinmemektedir. En çok karşılaşılan belirtiler ateş, öksürük ve nefes darlığıdır. Şiddetli olgularda zatürre, ağır solunum yetmezliği, böbrek yetmezliği ve ölüm gelişebilmektedir.

Nasıl Bulaşır?
Hasta bireylerin öksürmeleri aksırmaları ile ortama saçılan damlacıkların solunması ile bulaşır. Hastaların solunum parçacıkları ile kirlenmiş yüzeylere dokunulduktan sonra ellerin yıkanmadan yüz, göz, burun veya ağıza götürülmesi ile de virüs alınabilir. Kirli ellerle göz, burun veya ağıza temas etmek risklidir.

Kimler Daha Fazla Risk Altında?
COVID-19 enfeksiyonu ile ilgili şimdiye kadar edinilen bilgiler, bazı insanların daha fazla hastalanma ve ciddi semptomlar geliştirme riski altında olduğunu göstermiştir. 
- Vakaların yüzde 80'i hastalığı hafif geçirmektedir.
- Vakaların %20’si hastane koşullarında tedavi edilmektedir.
- Hastalık, genellikle 60 yaş ve üzerindeki kişileri daha fazla etkilemektedir.

Hastalıktan En Çok Etkilenen Kişiler:
- 60 yaş üstü olanlar
- Ciddi kronik tıbbi rahatsızlıkları olan insanlar:
- Kalp hastalığı
- Hipertansiyon
- Diyabet
- Kronik Solunum yolu hastalığı
- Kanser gibi
- Sağlık Çalışanları

Çocuklar Risk Altında Mı?
Çocuklarda hastalık nadir ve hafif görünmektedir. 
Çocuklarda şimdiye kadar ölüm görülmemiştir.

Hamileler Risk Altında Mı?
COVID-19 enfeksiyonu gelişen gebe kadınlarda hastalığın ciddiyeti konusunda sınırlı bilimsel kanıt vardır. 
Bununla birlikte mevcut kanıtlar COVID-19 enfeksiyonu sonrası hamile kadınlar arasındaki hastalık şiddetinin, hamile olmayan yetişkin COVID-19 vakalarına benzer olduğunu ve hamilelik sırasında COVID-19 ile enfeksiyonun fetüste olumsuz bir etkisi olduğunu gösteren hiçbir veri olmadığını göstermektedir. 
Şu ana kadar COVID-19'un hamilelik sırasında anneden bebeğe bulaştığına dair de bir kanıt bulunmamaktadır.

Tanı Nasıl Konur?
Yeni Koronavirüs tanısı için gerekli moleküler testler ülkemizde mevcuttur. Tanı testi sadece Halk Sağlığı Genel Müdürlüğü Ulusal Viroloji Referans Laboratuvarında ve belirlenmiş Halk Sağlığı Laboratuvarlarında yapılmaktadır.
              ''')
            ],
          ),
        ),
      ),
    );
  }
}
