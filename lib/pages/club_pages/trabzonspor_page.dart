import 'package:flutter/material.dart';
import 'package:futkolik_proje/pages/club_pages/besiktas_page.dart';

class TrabzonsporPage extends StatelessWidget {
  const TrabzonsporPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("",style: TextStyle(fontSize: 24),),),
      body: Column(children: [
        Text("Trabzonspor, 2 Ağustos 1967'de[2] kurulan Trabzon, Türkiye merkezli spor kulübü. Özellikle futbol şubesiyle tanınan kulüp, profesyonel futbol ligleri tarihinde şampiyon olan 6 kulüpten biri ve şampiyon olmayı başaran ilk Anadolu kulübüdür. Kulübün başkanlığını vekaleten Ertuğrul Doğan yapmaktadır.[4]Trabzonspor, güncel olarak futbol branşında birinci lig düzeyinde temsil edilmektedir. Bu dalların yanında kulübün basketbol, eskrim, e-spor, voleybol, atıcılık, atletizm, boks, judo ve masa tenisi takımları mevcuttur[5][6]. Birinci lig düzeyinde kulübün toplamda 8 şampiyonluğu vardır. Bu şampiyonlukların tümü, erkeklerde 7 ve kadınlarda 1[7] olmak üzere futbol şubesine aittir. Trabzonspor Futbol Takımı (erkekler), şampiyon olmuş altı takımdan biri ve İstanbul dışından şampiyon olmuş ilk takımdır.[8] Bunun yanında, futbol erkek takımı armasında yıldız olan -yıldız, Süper Lig'de beş şampiyonlukta bir verilir[9]- 4 Türk takımından biridir.[10] Ayrıca kulübün 1 şampiyonluğu bulunan kadın futbol branşı 2011'de faaliyetlerine ara verse de 2021-2022 sezonunda yeniden Kadınlar Süper Ligi'ne kabul edilmiştir.[11][12]")
        ]
      ),
    );
  }
}