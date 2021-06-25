import 'package:flutter/material.dart';
import 'package:evdekal/services/auth.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:evdekal/widgets/YanMenu.dart';

class anasayfa extends StatefulWidget {
  @override
  _anasayfaState createState() => _anasayfaState();
}

class _anasayfaState extends State<anasayfa> {
  final List<Map<String, String>> data = [
    {
      'anim': 'assets/animations/18795-coronavirus.json',
      "tip":
      'COVID-19 un yayılmasını önlemeye yardımcı olmak için bu beş kolay adımı uygulayın'
    },
    {
      'anim': 'assets/animations/15400-corona-virus-sick.json',
      "tip":
      'Hapşıracak veya öksürecek misiniz? Burnunuzu ve ağzınızı bir mendille kapatın veya dirseğinizi kullanın'
    },
    {
      'anim': 'assets/animations/17756-wash-your-hands-covid-19.json',
      "tip": 'Ellerinizi sık sık su ve sabunla en az 20 saniye yıkayın'
    },
    {
      'anim': 'assets/animations/20494-covid-molecules-spraying.json',
      "tip":
      'Evinizin ve işyerinizin etrafını sık sık temizleyin ve dezenfekte edin.'
    },
    {
      'anim': 'assets/animations/18389-social-distancing.json',
      "tip":
      'Halka açık bir yerde olmanız gerekiyorsa, kendinizle başkaları arasında en az 6 fit mesafe bırakın.'
    },
    {
      'anim': 'assets/animations/17895-wear-mask.json',
      "tip":
      'Başkalarının yanındayken ağzınızı ve burnunuzu örten maske takın'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
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
              onPressed: () {}),IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              Provider.of<Auth>(context, listen: false).signOut();
            },
          )
        ],
      ),
      drawer: YanMenu(),
      body: SafeArea(
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Covid-19\nGüvenlik İpuçları',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            Expanded(
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Container(
                        height: 300,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Lottie.asset(
                            data[index]['anim'],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          data[index]['tip'],
                          style: TextStyle(
                            color: Colors.red,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  );
                },
                itemCount: data.length,
                pagination: new SwiperPagination(),
              ),
            ),
          ],
        ),
      ),
    )
    );
  }
}

