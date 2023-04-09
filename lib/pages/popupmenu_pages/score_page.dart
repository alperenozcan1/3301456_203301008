import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../models/mac.dart';

class ScorePage extends StatefulWidget {
  const ScorePage({super.key});

  @override
  State<ScorePage> createState() => _ScorePageState();
}

class _ScorePageState extends State<ScorePage> {
  List<Mac> maclar=[
    Mac("Galatasaray 2-0 Adana Demirspor","01-04-2023"),
    Mac("Fenerbahçe 2-4 Besiktas","02-04-2023"),
    Mac("Giresunspor 2-0 Alanyaspor","02-04-2023"),
    Mac("Gaziantep FK 0-3 Kasımpasa","02-04-2023"),
    Mac("İstanbulspor 0-1 Karagümrük","03-04-2023"),
    Mac("Trabzonspor 3-4 Kayserispor","01-04-2023"),
    Mac("Hatayspor 0-3 Sivasspor","01-04-2023"),
    Mac("Başakşehir 1-0 Ankaragücü","01-04-2023"),
    Mac("Ümraniyespor 2-2 Konyaspor","02-04-2023"),    
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Skor",style: TextStyle(fontSize: 24),),),
      body: ListView.builder(itemBuilder: (context,index){
        var omac=maclar[index];
        return ListTile(leading: Text(omac.tarih),
          title: Text(omac.skor),
          tileColor: renkOlustur(index),
          
        );
      },
      itemCount: maclar.length,),
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
