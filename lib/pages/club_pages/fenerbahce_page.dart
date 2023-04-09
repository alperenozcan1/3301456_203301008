import 'package:flutter/material.dart';
import 'package:futkolik_proje/pages/club_pages/galatasaray_page.dart';

class FenerbahcePage extends StatelessWidget {
  const FenerbahcePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fenerbahçe",style: TextStyle(fontSize: 24)),),
      body: Column(
        children: [
          Text(
            "Fenerbahçe erkek futbol takımı, Fenerbahçe Spor Kulübü'nün Süper Lig'de mücadele eden profesyonel futbol takımıdır.[2] Kulübün futbol dışında faaliyet gösterdiği diğer spor dalları basketbol, voleybol, atletizm, boks, kürek, yelken, yüzme ve masa tenisi'dir. Fenerbahçe futbol takımı, iç saha maçlarını İstanbul Kadıköy'de bulunan 47.834 kişilik Fenerbahçe Şükrü Saracoğlu Stadyumu'nda yapmaktadır.[2] 1907 yılında bir spor kulübü olarak kurulan Fenerbahçe, Türkiye futbol tarihinin en başarılı ve en çok taraftarı olan spor kulüplerinden birisidir.Takma adı Sarı Kanaryalar olan Fenerbahçe'nin Trabzonspor ve Beşiktaş gibi takımlarla rekabeti bulunsa da en büyük rakibi aynı şehirde bulunduğu Galatasaray'dır. Bu iki takım arasında gerçekleşen maçlar Kıtalararası Derbi veya Avrasya Derbisi olarak adlandırılır. Kulübün geleneksel forması düz, sarı lacivert çubuklu forma, beyaz şort ve yanları hafif renkli beyaz çoraplardan oluşur."
            ,style: TextStyle(fontSize: 16),),
            
        ]
      ),
    );;
  }
}