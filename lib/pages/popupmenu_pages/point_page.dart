import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../models/puan.dart';

class PointPage extends StatefulWidget {
   PointPage({super.key});

  @override
  State<PointPage> createState() => _PointPageState();
}

class _PointPageState extends State<PointPage> {

  List<Puan> puanListesi=[
    Puan("Galatasaray",1 , 63),
    Puan("Fenerbahçe",2 , 54),
    Puan("Beşiktaş",3 ,52 ),
    Puan("Adana Demirspor",4 ,45 ),
    Puan("Trabzonspor",5 ,44 ),
    Puan("Başakşehir",6 ,44 ),
    Puan("Kayserispor",7 ,41 ),
    Puan("Konyaspor",8 ,35 ),
    Puan("Fatih Karagümrük",9 ,34 ),
    Puan("Sivasspor",10 ,30 ),
    Puan("Kasımpaşa", 11, 29),
    Puan("Alanyaspor", 12,29 ),
    Puan("Antalyaspor",13 , 28),
    Puan("MKE Ankaragücü",14 ,25 ),
    Puan("Giresunspor", 15,24 ),
    Puan("İstanbulspor",16 ,24 ),
    Puan("Ümraniyespor",17 ,23 ),
    Puan("Gaziantep FK",18 ,23 ),
    Puan("Hatayspor", 19,23 ),
    ];
  
//   ListTile listTileOLustur(String takimAdi,int no,int puan){
//   return ListTile(
//             leading: Text(no.toString()),
//             title: Text(takimAdi),
//             trailing: Text(puan.toString()),
//           );
          
//  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Puan Durumu",style: TextStyle(fontSize: 24),)),
      body: 
        
          
          ListView.builder(itemBuilder: (BuildContext context,int index){
            var oPuanListesi=puanListesi[index];
            return ListTile(
              title: Text(oPuanListesi.takimAdi),
              leading: Text(oPuanListesi.sira.toString()),
              trailing: Text(oPuanListesi.puan.toString()),
            );
          },
          itemCount: puanListesi.length,),
        
    
    );
  }
  
  // ListView  listView() {
  //   return ListView(
  //     children: [
  //       Column(
  //         children: [
  //           ListTile(leading: Text("Sıra",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),title: Text("TAKIM",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),trailing: Text("PUAN",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold)),tileColor: Colors.black),
          
  //           listTileOLustur("Galatasaray", 1,60),
  //           dividerOlustur(),
  //           listTileOLustur("Fenerbahçe", 2,54),
  //           dividerOlustur(),
  //           listTileOLustur("Beşiktaş", 3,49),
  //           dividerOlustur(),
  //           listTileOLustur("Adana Demirspor", 4,45),
  //           dividerOlustur(),
  //           listTileOLustur("Trabzonspor", 5,44),
  //           dividerOlustur(),
  //           listTileOLustur("Başakşehir", 6,41),
  //           dividerOlustur(),
  //           listTileOLustur("Kayserispor", 7,38),
  //           dividerOlustur(),
  //           listTileOLustur("Konyaspor", 8,34),
  //           dividerOlustur(),
  //           listTileOLustur("Fatih Karagümrük", 9,31),
  //           dividerOlustur(),
  //           listTileOLustur("Antalyaspor", 10,28),
  //           dividerOlustur(),
  //           listTileOLustur("Alanyaspor", 11,28),
  //           dividerOlustur(),
  //           listTileOLustur("Sivasspor", 12,27),
  //           dividerOlustur(),
  //           listTileOLustur("Kasımpaşa", 13,26),
  //           dividerOlustur(),
  //           listTileOLustur("Gaziantep FK", 14,25),
  //           dividerOlustur(),
  //           listTileOLustur("MKE Ankaragücü", 15,25),
  //           dividerOlustur(),
  //           listTileOLustur("İstanbulspor", 16,24),
  //           dividerOlustur(),
  //           listTileOLustur("Giresunspor", 17,23),
  //           dividerOlustur(),
  //           listTileOLustur("Hatayspor", 18,23),
  //           dividerOlustur(),
  //           listTileOLustur("Ümraniyespor", 19,23),
  //         ],
  //       )
  //     ],
  //   );

  //}
  
//   dividerOlustur() {
//      return Divider(
//           color: Colors.black,
//         );
//   }
 }

