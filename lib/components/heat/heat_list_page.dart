import 'package:checkmate/components/app/bottom_navigator.dart';
import 'package:checkmate/components/heat/heat_list.dart';
import 'package:flutter/material.dart';

class HeatListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HeatListPageState();
  }
}

class _HeatListPageState extends State<HeatListPage> {
  final String title = 'heat';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title.toUpperCase()),
      ),
      body: Column(
        children: <Widget>[
          HeatList(),
        ],
      ),
      bottomNavigationBar: BottomNavigator(title: title),
    );
  }
}
