import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AssistsKingPage extends StatefulWidget {
  const AssistsKingPage({super.key});

  @override
  State<AssistsKingPage> createState() => _AssistsKingPageState();
}

class _AssistsKingPageState extends State<AssistsKingPage> {
  List<Futbolcu> asistler=[
    Futbolcu("Borini", 8),
    Futbolcu("Caner Erkin", 6),
    Futbolcu("Mauro Icardi", 6),
    Futbolcu("Lincoln", 6),
    Futbolcu("F.Soyalp", 6),
    Futbolcu("Bakasetas", 5),
    Futbolcu("Belhanda", 5),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Asist Krallığı",style: TextStyle(fontSize: 24),),),
      body: ListView.builder(itemBuilder: (BuildContext context,int index){
        var oAsistler=asistler[index];
        return ListTile(
          title: Text(oAsistler.isim),
          trailing: Text(oAsistler.asistSayisi.toString()),
        );
      }),
    );
  }
}
class Futbolcu{
  String isim;
  int asistSayisi;
  Futbolcu(this.isim,this.asistSayisi);
}