import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../statistics_pages/assists_king.dart';
import '../statistics_pages/goal_king.dart';

class StatisticsPage extends StatefulWidget {
  const StatisticsPage({super.key});

  @override
  State<StatisticsPage> createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("İstatistikler",style: TextStyle(fontSize: 24),),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>GoalKingPage()));}, child: Text("Gol Krallığı")),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AssistsKingPage()));}, child: Text("Asist Krallığı")),
          ],
        ),
      ),
    );
  }
}