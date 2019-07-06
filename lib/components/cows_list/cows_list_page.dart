import 'package:checkmate/components/app/bottom_navigator.dart';
import 'package:flutter/material.dart';

class CowsListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CowsListPageState();
  }
}

class _CowsListPageState extends State<CowsListPage> {
  final String title = 'cows list';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title.toUpperCase()),),
      bottomNavigationBar: BottomNavigator(title: title),
    );
  }
}