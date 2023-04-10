import 'package:flutter/material.dart';

import 'package:futkolik_proje/pages/popupmenu_pages/club_page.dart';
import 'package:futkolik_proje/pages/popupmenu_pages/point_page.dart';
import 'package:futkolik_proje/pages/popupmenu_pages/score_page.dart';
import 'package:futkolik_proje/pages/popupmenu_pages/statistics_page.dart';
import 'accounts_pages/login_page.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Haber> haberler=[
    Haber("Trabzonspor'da teknik direktör Orhan AK istifa etti."),
    Haber("İstanbul derbisinde Beşiktaş deplasmanda Fenerbahçe'yi 4-2 mağlup etti.Beşiktaşlı Nathan Redmond maça damga vurdu.Yıldız oyuncu 1 gol,3 asist ile maçı tamamladı."),
    Haber("Süper Lig'in lideri Galatasaray gözünü kupaya çevirdi.Çarşamba akşamı 20.30'da maç oynanacak."),
    Haber("A Milli Futbol takımımız FIFA dünya sıralamasında 1 basamak yükselerek 43.sıraya yerleşti."),
    Haber("Hollanda Kupa maçında Feyenoord-Ajax maçında iki takımın kaptanları arasında gerginlik çıktı.Dusan Tadic Orkun Kökçü'nün maç sırasında orucunu açmasıyla dalga geçti."),
    Haber("PSG'deki sözleşmesi sezon sonu bitecek olan Lionel Messi takımdan ayrılmayı düşünüyor.Suudi Arabistan'dan Al Hilal takımından gelen 400 milyonluk teklifi reddetti.Barcelona talipleri arasında ancak Barcelona'ya transferi ekonomik olarak zor gözüküyor."),
    Haber("İspanya Kral Kupası yarı final maçında Real Madrid ezeli rakibi Barcelona'yı deplasmanda 4-0 yendi.Bu sonuçla Real Madrid finale adını yazdırdı.")

    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget(),
      body: ListView.builder(itemBuilder: (BuildContext context,int index){
        var oHaber=haberler[index];
        return  ListTile(
            title: Text(oHaber.aciklama,style: TextStyle(fontSize: 20,),),
            tileColor:renkOlustur(index), 
        );
      },
      itemCount: haberler.length,
      // separatorBuilder: (context, index) {
      //   return Divider(color: Colors.black,thickness: 2,);
      // },
      ),
    );
  }

  AppBar appbarWidget() {
    return AppBar(
      backgroundColor: Colors.green,
      centerTitle: true,
      title: Text("FUTKOLİK",
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900)),
      actions: [
        PopupMenuButton(
          itemBuilder: (BuildContext BuildContext) {
            return <PopupMenuEntry>[
              PopupMenuItem(
                  child: ElevatedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (takimContext)=>ClubPage()));}, child: Text("Takımlar"))),
              PopupMenuItem(
                  child: ElevatedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (pointContext)=>PointPage()));}, child: Text("Puan Durumu"))),
              PopupMenuItem(
                  child: ElevatedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (statisticsContext)=>StatisticsPage()));}, child: Text("İstatistikler"))),
                      PopupMenuItem(
                  child: ElevatedButton(
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (statisticsContext)=>ScorePage()));}, child: Text("Skor"))),
            ];
          },
          icon: Icon(Icons.apps_rounded),
        )
      ],
      leading: PopupMenuButton(
        itemBuilder: (BuildContext BuildContext) {
          return <PopupMenuEntry>[
            PopupMenuItem(
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (loginContext) => LoginPage()));
                    },
                    child: Text("Giris yap"))),
          ];
        },
        icon: Icon(Icons.account_circle_sharp),
      ),
    );
    
  }
  
  renkOlustur(int index) {
    if(index %2==0){
      return Colors.orange;
    }
    else{
      return Colors.white10;
    }
  }
}
class Haber{
  String aciklama;
  Haber(this.aciklama);
}
