import 'dart:math';

import 'package:checkmate/components/heat/heat_monitoring_page.dart';
import 'package:flutter/material.dart';

class HeatList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HeatListState();
  }
}

class _HeatListState extends State<HeatList> {
  Widget build(BuildContext context) {
    final List<Widget> demoTile = generateDemoData();

    return Flexible(
      child: ListView(
        children: demoTile,
      ),
    );
  }

  List<Widget> generateDemoData() {
    List<String> cowNames = [
      'อดิศักดิ์',
      'อักขระ',
      'อริศรา',
      'อมร',
      'อมรรัตน์',
      'อนันต์',
      'อนันตชัย',
      'อาณัติ',
      'อัญชลี',
      'อัญชลีพร',
      'อนุชา',
      'อาภัสรา',
      'อภิชาต',
      'อภิชาติ',
      'อภิรักษ์',
      'อภิศักดิ์',
      'อภิญญา',
      'อารี',
      'อารีพงศ์',
      'อารง',
      'อาทิตย์',
      'อรุณศรี',
      'อัษรา',
      'อัษฎา',
      'อรรถสิทธิ์',
      'บัณฑิตา',
      'บัญญัติ',
      'บุญศรี',
      'บุญรัตน์',
      'บุญเยี่ยม',
      'จารุวรรณ',
      'จินตหรา',
      'จินทนา',
      'เจือ'
    ];
    int min = 1000000;
    int max = 9999999;
    Random rnd = new Random();
    List status = ['normal', 'heat', 'breeded'];
    List statusSymbol = ['🐄', '🔥', '💘'];
    List<Widget> result = new List<Widget>();

    for (var i = 0; i < 100; i++) {
      String idNum = 'CM' + (min + rnd.nextInt(max - min)).toString();
      int k = rnd.nextInt(3);
      Map<String, dynamic> cowInfo = new Map<String, dynamic>();
      cowInfo['id'] = idNum;
      cowInfo['name'] = cowNames[i%cowNames.length];
      cowInfo['status'] = status[k];
      cowInfo['symbol'] = statusSymbol[k];

      if (cowInfo['status'] != 'heat') {
        continue;
      }

      var tempTile = InkWell(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HeatMonitoringPage(cowInfo: cowInfo))),
          child: ListTile(
            leading: Image.asset('assets/images/cow-3.png'),
            title: Text(
                "$idNum ${cowInfo['symbol']} (${cowInfo['status']})"),
            subtitle: Text(cowInfo['name']),
            trailing: Icon(Icons.arrow_right),
          ));

      result.add(tempTile);
    }

    return result;
  }
}
