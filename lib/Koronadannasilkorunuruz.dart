import 'package:flutter/material.dart';

class Koronadannasilkorunuruz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Koronadan Nasıl Korunuruz?',style: TextStyle(color: Colors.white),),
      ),
      body: SafeArea(
        child: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          Text('''Akut solunum yolu enfeksiyonlarının bulaşma riskini azaltmaya/önlemeye yönelik öneriler, COVID-19 için de geçerlidir.
          
- El hijyenine önem verilmelidir. Eller en az 20 saniye boyunca sabun ve suyla yıkanmalı, sabun ve suyun olmadığı durumlarda alkol içerikli el antiseptiği kullanılmalıdır.
- Eller yıkanmadan ağız, burun ve gözlere dokunulmamalıdır.
- Hasta insanlarla temastan kaçınılmalıdır.
- Özellikle hasta insanlarla veya bu insanların çevreleriyle doğrudan temas ettikten sonra eller yıkanmalıdır.
- Öksürme veya hapşırma sırasında ağız ve burun tek kullanımlık mendille kapatılmalıdır. Mendilin bulunmadığı durumlarda dirsek içi kullanılmalıdır.
- Mümkünse kalabalık yerlere ve hasta yoğunluğunun fazla olması nedeniyle sağlık merkezlerine gidilmemelidir. Gidilmesi gerekiyorsa diğer kişilerle temas en aza indirilmelidir.
          ''')
        ],
        ),
      ),
      );
  }
}
