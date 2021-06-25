import 'package:flutter/material.dart';

class YanMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(child: Image.asset('assets/images/evde-kal.png')),
            Expanded(
                child: ListView(
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.info),
                  title: Text('Covid19 Nedir'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/covid19');
                  },
                ),
                Divider(
                  height: 3.0,
                ),
                ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Koronadan Nasıl Korunuruz'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/Koronadannasilkorunuruz');
                  },
                ),
                Divider(
                  height: 3.0,
                ),
                ListTile(
                  leading: Icon(Icons.analytics),
                  title: Text('Korona Grafiği'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/grafik');
                  },
                ),
                Divider(
                  height: 3.0,
                ),
                ListTile(
                  leading: Icon(Icons.analytics),
                  title: Text('Evdekal Postları'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/posts');
                  },
                ),
                Divider(
                  height: 3.0,
                ),
                ExpansionTile(
                  leading: Icon(Icons.error),
                  title: Text('Yasaklar'),
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ExpansionTile(
                        title: Text('Bölgesel Yasaklar'),
                        children: <Widget>[
                          Container(
                            child: ListTile(
                              title: Text('Kırmızı(Çok Yüksek Riskli)'),
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(context, '/kirmizibolge');
                              },
                            ),
                          ),
                          Container(
                            child: ListTile(
                              title: Text('Turuncu(Yüksek Riskli)'),
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(context, '/turuncubolge');
                              },
                            ),
                          ),
                          Container(
                            child: ListTile(
                              title: Text('Sarı(Orta Riskli)'),
                              onTap: () {
                                Navigator.pop(context);
                                Navigator.pushNamed(context, '/saribolge');
                              },
                            ),
                          ),
                          Container(
                            child: ListTile(
                                title: Text('Mavi(Düşük Riskli)'),
                                onTap: () {
                                  Navigator.pop(context);
                                  Navigator.pushNamed(context, '/mavibolge');
                                },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      height: 3.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        title: Text('Sokağa Çıkma Kısıtlamaları'),
                        onTap: () {
                          Navigator.pushNamed(context, '/sokagacikmayasaklari');
                        },
                      ),
                    ),
                    Divider(
                      height: 3.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10.0),
                      child: ListTile(
                        title: Text('Yasaklardan Muaf Kişilerin Listesi'),
                        onTap: () {
                          Navigator.pushNamed(context, '/yasaklardanmuaf');
                        },
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 3.0,
                ),
                ListTile(
                  leading: Icon(Icons.contact_phone),
                  title: Text('Hakkında'),
                  onTap: () {
                    Navigator.pushNamed(context, '/hakkinda');
                  },
                ),
                Divider(
                  height: 3.0,
                ),
                Container(
                  color: Colors.red,
                  child: ListTile(
                    leading: Icon(Icons.map, color: Colors.white),
                    title: Text(
                      'Covid-19 Bilgilendirme Platformu',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/platform');
                    },
                  ),
                ),
                Divider(
                  height: 3.0,
                ),
                Container(
                  color: Colors.red,
                  child: ListTile(
                    leading: Icon(
                      Icons.medical_services,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Test Sonucu Öğrenme Sitesi',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/testsonucsitesi');
                    },
                  ),
                ),
                Divider(
                  height: 3.0,
                ),
                Container(
                  color: Colors.red,
                  child: ListTile(
                    leading: Icon(Icons.book, color: Colors.white),
                    title: Text(
                      'Covid-19 Sözlüğü',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/covidsozlugu');
                    },
                  ),
                ),
                Divider(
                  height: 3.0,
                ),
                Container(
                  color: Colors.red,
                  child: ListTile(
                    leading: Icon(Icons.table_rows, color: Colors.white),
                    title: Text(
                      'Genel Koronavirüs Tablosu',
                      style: TextStyle(color: Colors.white),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, '/genelkoronatablo');
                    },
                  ),
                ),

              ],
            ))
          ],
        ),
      ),
    );
  }
}
