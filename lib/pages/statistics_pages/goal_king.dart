import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class GoalKingPage extends StatefulWidget {
  const GoalKingPage({super.key});

  @override
  State<GoalKingPage> createState() => _GoalKingPageState();
}

class _GoalKingPageState extends State<GoalKingPage> {
  List<Futbolcu> futbolcular=[
    Futbolcu("Valencia", 26),
    Futbolcu("Diagne", 16),
    Futbolcu("Borini", 15),
    Futbolcu("Cenk Tosun", 12),
    Futbolcu("Wright",12 ),
    Futbolcu("Batshuayi",10 ),
    Futbolcu("Ethemi",10 ),
    Futbolcu("Umut Nayir",10 ),
    Futbolcu("Bajic",9 ),
    Futbolcu("Icardi", 9),
    
    
    
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gol Krallığı",style:TextStyle(fontSize: 24),),),
      body: ListView.builder(itemBuilder: (BuildContext context,int index){
        var ofutbolcu=futbolcular[index];
        return ListTile(
          title: Text(ofutbolcu.isim),
          trailing: Text(ofutbolcu.golSayisi.toString()),
        );
      },
      itemCount: futbolcular.length,
      ),
    );
  }
}
class Futbolcu{
  String isim;
  int golSayisi;
  Futbolcu(this.isim,this.golSayisi);
}