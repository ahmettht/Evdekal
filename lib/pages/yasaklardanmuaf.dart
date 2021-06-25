import 'package:flutter/material.dart';

class yasaklardanmuaf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Yasaklardan Muaf Kişilerin Listesi',
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
              Text('''1. TBMM üyeleri ve çalışanları,

2. Kamu düzeni ve güvenliğinin sağlanmasında görevli olanlar (özel güvenlik görevlileri
dâhil),

3. Zorunlu kamu hizmetlerinin sürdürülmesi için gerekli kamu kurum ve kuruluşları ile işletmeler (Havalimanları, limanlar, sınır kapıları, gümrükler, karayolları, huzurevleri, yaşlı bakım evleri, rehabilitasyon merkezleri, PTT vb.), buralarda çalışanlar ile ibadethanelerdeki din görevlileri,

4. Acil Çağrı Merkezleri, Vefa Sosyal Destek Birimleri, İl/İlçe Salgın Denetim Merkezleri, Göç İdaresi, Kızılay, AFAD ve afet kapsamındaki faaliyetlerde görevli olanlar ve gönüllü olarak görev verilenler,

5. Kamu ve özel sağlık kurum ve kuruluşları, eczaneler, veteriner klinikleri ve hayvan hastaneleri ile buralarda çalışanlar, hekimler ve veteriner hekimler,

6. Zorunlu sağlık randevusu olanlar (Kızılay'a yapılacak kan ve plazma bağışları dahil),

7. İlaç, tıbbi cihaz, tıbbi maske ve dezenfektan üretimi, nakliyesi ve satışına ilişkin faaliyet yürüten iş yerleri ile buralarda çalışanlar,

8. Üretim ve imalat tesisleri ile inşaat faaliyetleri ve bu yerlerde çalışanlar,

9. Bitkisel ve hayvansal ürünlerin üretimi, sulanması, işlenmesi, ilaçlanması, hasadı, pazarlanması ve nakliyesinde çalışanlar,

10. Yurt içi ve dışı taşımacılık (ihracat/ithalat/transit geçişler dâhil) ve lojistiğini yapan firmalar ve bunların çalışanları,

11. Ürün ve/veya malzemelerin nakliyesinde ya da lojistiğinde (kargo dahil), yurt içi ve yurt dışı taşımacılık, depolama ve ilgili faaliyetler kapsamında görevli olanlar,

12. Oteller ve konaklama yerleri ile buralarda çalışanlar,

13. Hayvan barınakları, hayvan çiftlikleri ve hayvan bakım merkezleri ile bu yerlerin görevlileri ve gönüllü çalışanları, 30.04.2020 tarih ve 7486 sayılı Genelgemizle oluşturulan
Hayvan Besleme Grubu üyeleri ile sokak hayvanlarını besleyecek olanlar,

14. İkametinin önü ile sınırlı olmak kaydıyla evcil hayvanlarının zorunlu ihtiyacını karşılamak üzere dışarı çıkanlar,

15. Gazete, dergi, radyo ve televizyon kuruluşları, gazete basım matbaaları, bu yerlerde çalışanlar ile gazete dağıtıcıları,

16. Akaryakıt istasyonları, lastik tamircileri ve buralarda çalışanlar,

17. Sebze/meyve ve su ürünleri toptancı halleri ile buralarda çalışanlar,

18. Ekmek üretiminin yapıldığı fırın ve/veya unlu mamul ruhsatlı işyerleri, üretilen ekmeğin dağıtımında görevli olan araçlar ile buralarda çalışanlar,

19. Cenaze defin işlemlerinde görevli olanlar (din görevlileri, hastane ve belediye görevlileri vb.) ile birinci derece yakınlarının cenazelerine katılacak olanlar,

20. Doğalgaz, elektrik, petrol sektöründe stratejik olarak faaliyet gösteren büyük tesis ve işletmeler (rafineri ve petrokimya tesisleri ile termik ve doğalgaz çevrim santralleri gibi) ile bu yerlerde çalışanlar,

21. Elektrik, su, doğalgaz, telekomünikasyon vb. kesintiye uğramaması gereken iletim ve altyapı sistemlerinin sürdürülmesi ve arızalarının giderilmesinde görevli olanlar ile servis hizmeti vermek üzere görevde olduklarını belgelemek şartı ile teknik servis çalışanları,

22. Kargo, su, gazete ve mutfak tüpü dağıtım şirketleri ve çalışanları,

23. Mahalli idarelerin toplu taşıma, temizlik, katı atık, su ve kanalizasyon, karla mücadele, ilaçlama, itfaiye ve mezarlık hizmetlerini yürütmek üzere çalışacak personeli,

24. Şehir içi toplu ulaşım araçlarının (metrobüs, metro, otobüs, dolmuş, taksi vb.) sürücü ve görevlileri,

25. Yurt, pansiyon, şantiye vb. toplu yerlerde kalanların gereksinim duyacağı temel ihtiyaçların karşılanmasında görevli olanlar,

26. İş sağlığı ve güvenliği ile iş yerlerinin güvenliğini sağlamak amacıyla iş yerlerinde bulunması gerekli olan çalışanlar (iş yeri hekimi, güvenlik görevlisi, bekçi vb.),

27. Otizm, ağır mental retardasyon, down sendromu gibi “Özel Gereksinimi” olanlar ile bunların veli/vasi veya refakatçileri,

28. Mahkeme kararı çerçevesinde çocukları ile şahsi münasebet tesis edecekler (mahkeme kararını ibraz etmeleri şartı ile),

29. Seyircisiz oynanabilecek profesyonel spor müsabakalarındaki sporcu, yönetici ve diğer görevliler,

30. Çalışanları inşaat alanında bulunan şantiyede konaklayarak yapımı devam eden büyük inşaatlar ile buralarda çalışanlar (Bu madde kapsamında inşaat ve konaklama aynı
şantiye alanı içinde ise izin verilir, başka bir yerden çalışanların gelmesine ve şantiyede kalanların başka bir yere gitmelerine izin verilmez. Çalışma sadece inşaat alanı ile sınırlıdır.),

31. Bankalar başta olmak üzere yurt çapında yaygın hizmet ağı olan kurum, kuruluş ve işletmelerin bilgi işlem merkezleri ile çalışanları (asgari sayıda olmak kaydıyla),

32. ÖSYM tarafından ilan edilen ve diğer merkezi sınavlara katılacağını belgeleyenler (bu kişilerin yanlarında bulunan eş, kardeş, anne veya babadan bir refakatçi) ile sınav görevlileri,

33. İl/İlçe Umumi Hıfzıssıhha Kurullarınca izin verilen, şehirlerarası karayolları kenarında bulunan dinleme tesislerinde yer alan yeme-içme yerleri ve buralarda çalışanlar,

34. Yaklaşan yılsonu işlemleri nedeniyle serbest muhasebeci, mali müşavir, yeminli mali müşavirler ve bu meslek mensuplarıyla birlikte çalışanlar yasaklardan muaftırlar.
              ''')
            ],
          ),
        ),
      ),
    );
  }
}