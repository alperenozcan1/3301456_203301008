import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:futkolik_proje/pages/club_pages/besiktas_page.dart';
import 'package:futkolik_proje/pages/club_pages/fenerbahce_page.dart';
import 'package:futkolik_proje/pages/club_pages/trabzonspor_page.dart';

import '../club_pages/galatasaray_page.dart';

class ClubPage extends StatefulWidget {
 ClubPage({super.key});

  @override
  State<ClubPage> createState() => _ClubPageState();
}

class _ClubPageState extends State<ClubPage> {

  // List<Takim> takimlar=[
  //   Takim("Galatasaray"),
  //   Takim("Fenerbahçe"),
  //   Takim("Beşiktaş"),
  //   Takim("Trabzonspor"),
  //   Takim("Başakşehir"),
  //   Takim("Adana Demirspor"),
  //   Takim("Kayserispor"),
  //   Takim("Konyaspor"),
  //   Takim("MKE Ankaragücü"),
  //   Takim("Alanyaspor"),
  //   Takim("Antalyaspor"),
  //   Takim("Kasımpaşa"),
  //   Takim("Gaziantep FK"),
  //   Takim("Karagümrük FK"),
  //   Takim("İstanbulspor"),
  //   Takim("Ümraniyespor"),
  //   Takim("Giresunspor"),
  //   Takim("Hatayspor"),
  //   Takim("Sivasspor"),
    
  //   ];
    
//  ListTile listTileOLustur(String takimAdi,int no,String takimDetay){
//   return ListTile(
//             leading: Text(no.toString()),
//             title: Text(takimAdi),
//             subtitle: Text(takimDetay),
//           );
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kulüpler",style: TextStyle(fontSize: 24),),
      ),
      body: listView(),
    );
  }

  ListView listView() {
    return ListView(
      children: [
        Column(
          children: [
            ListTile(title: Text("Galatasaray"),onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Fenerbahçe"),onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FenerbahcePage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Beşiktaş"),onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BesiktasPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Trabzonspor"),onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>TrabzonsporPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Adana Demirspor"),onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Başakşehir"),onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Konyaspor"),onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Kayserispor"),onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Antalyaspor"),onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Alanyaspor"),onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Fatih Karagümrük"),onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Kasımpaşa"),onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("MKE Ankaragücü"),onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Sivasspor"),onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Gaziantep FK"),onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("İstanbulspor"),onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Giresunspor"),onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Hatayspor"),onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
            ListTile(title: Text("Ümraniyespor"),onTap: () {
             // Navigator.push(context, MaterialPageRoute(builder: (context)=>GalatasarayPage()));
            },),
            dividerOlustur(),
          
            //listTileOLustur("Galatasaray", 1,"Kuruluş:1905"),
            //dividerOlustur(),
            // listTileOLustur("Fenerbahçe", 2,"Kuruluş:1907"),
            // dividerOlustur(),
            // listTileOLustur("Beşiktaş", 3,"Kuruluş:1903"),
            // dividerOlustur(),
            // listTileOLustur("Trabzonspor", 4,"Kuruluş:1967"),
            // dividerOlustur(),
            // listTileOLustur("Adana Demirspor", 5,"Kuruluş:1940"),
            // dividerOlustur(),
            // listTileOLustur("Başakşehir", 6,"Kuruluş:1990"),
            // dividerOlustur(),
            // listTileOLustur("Kayserispor", 7,"Kuruluş:1966"),
            // dividerOlustur(),
            // listTileOLustur("Konyaspor", 8,"Kuruluş:1922"),
            // dividerOlustur(),
            // listTileOLustur("Fatih Karagümrük", 9,"Kuruluş:1926"),
            // dividerOlustur(),
            // listTileOLustur("Antalyaspor", 10,"Kuruluş:1966"),
            // dividerOlustur(),
            // listTileOLustur("Alanyaspor", 11,"Kuruluş:1948"),
            // dividerOlustur(),
            // listTileOLustur("Sivasspor", 12,"Kuruluş:1967"),
            // dividerOlustur(),
            // listTileOLustur("Kasımpaşa", 13,"Kuruluş:1921"),
            // dividerOlustur(),
            // listTileOLustur("Gaziantep FK", 14,"Kuruluş:1988"),
            // dividerOlustur(),
            // listTileOLustur("MKE Ankaragücü", 15,"Kuruluş:1910"),
            // dividerOlustur(),
            // listTileOLustur("İstanbulspor", 16,"Kuruluş:1926"),
            // dividerOlustur(),
            // listTileOLustur("Giresunspor", 17,"Kuruluş:1925"),
            // dividerOlustur(),
            // listTileOLustur("Hatayspor", 18,"Kuruluş:1967"),
            // dividerOlustur(),
            // listTileOLustur("Ümraniyespor", 19,"Kuruluş:1938"),
          ],
        ),
      ],
    );
  }

  Divider dividerOlustur() {
    return Divider(
          color: Colors.black,
        );

  }

}
class Takim{
  String takimAdi;
  Takim(this.takimAdi);
}