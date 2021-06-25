import 'package:flutter/material.dart';

class sokagacikmayasaklari extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Sokağa Çıkma Kısıtlamaları',
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
              Text('''1. Yeni bir karar alınıncaya kadar ülke genelinde hafta sonları; Cuma günleri saat 21.00’de başlayacak, Cumartesi ve Pazar günlerinin tamamını kapsayacak ve Pazartesi günleri saat 05.00’de tamamlanacak şekilde sokağa çıkma kısıtlaması uygulanacaktır.
İlk uygulama olarak 04.12.2020 Cuma günü saat 21.00’de başlayıp 07.12.2020 Pazartesi günü saat 05.00’de bitecek şekilde tüm vatandaşlarımız için sokağa çıkma kısıtlaması getirilecek olup bundan sonraki hafta sonlarında da uygulama aynı şekilde devam edecektir.
 
1.1. Sokağa çıkma kısıtlaması süresince üretim, imalat, tedarik ve lojistik zincirlerinin aksamaması, sağlık, tarım ve orman faaliyetlerinin sürekliliğini sağlamak amacıyla Ek’te belirtilen yerler ve kişiler kısıtlamadan muaf tutulacaktır.
 
1.2. Kısıtlamanın olduğu Cumartesi ve Pazar günleri market, bakkal, manav, kasap ve kuruyemişçiler 10.00-­17.00 saatleri arasında faaliyet gösterebilecek, vatandaşlarımız (65 yaş ve üzeri ile 20 yaş altında bulunanlar hariç) zorunlu ihtiyaçlarının karşılanması ile sınırlı olmak ve araç kullanmamak şartıyla (engelli vatandaşlarımız hariç) ikametlerine en yakın market, bakkal, manav, kasap ve kuruyemişçilere gidip gelebilecektir. Aynı saatler arasında market, bakkal, manav, kasap, kuruyemişçiler ve online sipariş firmaları evlere/adrese servis şeklinde de satış yapabileceklerdir.
 
1.3. Cumartesi ve Pazar günleri ekmek üretiminin yapıldığı fırın ve/veya unlu mamul ruhsatlı iş yerleri ile bu iş yerlerinin sadece ekmek satan bayileri açık olacaktır (Bu iş yerlerinde sadece ekmek ve unlu mamul satışı yapılabilir.). Vatandaşlarımız (65 yaş ve üzeri ile 20 yaş altında bulunanlar hariç) ekmek ve unlumamul ihtiyaçlarının karşılanması ile sınırlı olmak ve araç kullanmamak şartıyla (engelli vatandaşlarımız hariç) ikametlerine yürüme mesafesinde olan fırına gidip gelebileceklerdir.
Fırın ve unlu mamul ruhsatlı işyerlerine ait ekmek dağıtım araçlarıyla sadece market ve bakkallara ekmek servisi yapılabilecek, ekmek dağıtım araçlarıyla sokak aralarında kesinlikle satış yapılmayacaktır.
 
1.4. Lokanta ve restoran tarzı işyerleri, sokağa çıkma kısıtlamasının olduğu Cumartesi ve Pazar günleri 10.00-­20.00 saatleri arasında sadece paket servis şeklinde hizmet sunmak üzere açık olabilecektir.
 
2. Yeni bir karar alınıncaya kadar ülke genelinde hafta içerisinde yer alan günlerde (Pazartesi, Salı, Çarşamba, Perşembe ve Cuma) 21.00­-05.00 saatleri arasında sokağa çıkma kısıtlaması uygulanacaktır.
İlk uygulama olarak 01.12.2020 Salı günü saat 21.00’de başlayıp 02.12.2020 Çarşamba günü saat 05.00’de bitecek şekilde tüm vatandaşlarımız için sokağa çıkma kısıtlaması getirilecek olup bundan sonraki haftalarda da Pazartesi, Salı, Çarşamba, Perşembe ve Cuma günleri uygulama yukarıda belirtildiği şekilde devam edecektir.
 
2.1. Sokağa çıkma kısıtlaması süresince üretim, imalat, tedarik ve lojistik zincirlerinin aksamaması, sağlık, tarım ve orman faaliyetlerinin sürekliliğini sağlamak amacıyla Ek’te belirtilen yerler ve kişiler kısıtlamadan muaf tutulacaktır.
2.2. Sokağa çıkma kısıtlamasındaki getirilen sürelere uymak için istisna getirilenler dışındaki tüm işyerleri hafta içi saat 20.00’de kapanacaktır.
3. Sokağa çıkma kısıtlaması getirilen süre ve günlerde (hafta içi ve hafta sonunda uygulanacak) aşağıda belirtilen zorunlu hallerde şehirlerarası seyahatlere izin verilecektir.
3.1. Zorunlu Haller Sayılacak Durumlar;
Tedavi olduğu hastaneden taburcu olup asıl ikametine dönmek isteyen, doktor raporu ile sevk olan ve/veya daha önceden alınmış doktor randevusu/kontrolü olan, 
Kendisi veya eşinin, vefat eden birinci derece yakınının ya da kardeşinin cenazesine katılmak için veya cenaze nakil işlemine refakat edecek olan (en fazla 4 kişi),  
Bulunduğu şehre son 5 gün içerisinde gelmiş olmakla beraber kalacak yeri olmayıp ikamet ettikleri yerleşim yerlerine dönmek isteyen (5 gün içinde geldiğini yolculuk bileti, geldiği araç plakası, seyahatini gösteren başkaca belge, bilgi ile ibraz edenler),
ÖSYM tarafından ilan edilen ve diğer merkezi sınavlara katılacaklar ve refakatçileri,
Askerlik hizmetini tamamlayarak yerleşim yerlerine dönmek isteyen,
Özel veya kamudan günlü sözleşmeye davet yazısı olan,  
Ceza infaz kurumlarından salıverilen,
Vatandaşlarımız, yukarıda belirtilen durumların varlığı halinde toplu ulaşım araçlarıyla veya Bakanlığımıza ait E­BAŞVURU ve ALO 199 sistemleri üzerinden ya da Valilik/Kaymakamlıklara doğrudan başvuru yoluyla Seyahat İzin Kurullarından izin almak kaydıyla özel araçlarıyla seyahat edebileceklerdir.
 
3.2. Yukarıda belirtilen mazeretleri taşımayan kişilerin şehirlerarası seyahatleri ise ancak toplu ulaşım araçları (uçak, otobüs, tren, gemi vb.) kullanılmak suretiyle mümkün olacaktır. İşi ile ilgili illiyetini belgeleyen toplu ulaşım araçlarının görevlileri ile şehirlerarası seyahat edeceğini bilet, rezervasyon kodu vb. ile ibraz eden kişiler sokağa çıkma kısıtlamasından muaf olacaktır.
 
4. Sokağa çıkma kısıtlaması getirilen süre ve günlerde 65 yaş ve üzeri vatandaşlarımızın ihtiyaç duyduğu temel ihtiyaçları (ekmek, temel gıda vb.) planlama yapılarak Vefa Sosyal Destek Birimleri aracılığıyla karşılanacaktır.
              ''')
            ],
          ),
        ),
      ),
    );
  }
}