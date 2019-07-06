import 'package:flutter/material.dart';

class CowsList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CowListState();
  }
}

class _CowListState extends State<CowsList> {
  Widget build(BuildContext context) {
    return Flexible(child: ListView(
      children: <Widget>[
        ListTile(
          leading: Image.asset('assets/images/cow-3.png'),
          title: Text("MC19920002 🔥 (Heating)"),
          subtitle: Text("นวล"),
          trailing: Icon(Icons.arrow_right),
        ),
        ListTile(
          leading: Image.asset('assets/images/cow-3.png'),
          title: Text("MC19980202 💘 (Breeded)"),
          subtitle: Text("จามเทวี"),
          trailing: Icon(Icons.arrow_right),
        ),
        ListTile(
          leading: Image.asset('assets/images/cow-3.png'),
          title: Text("MC20190338 🐄 (Normal)"),
          subtitle: Text("ต้นหอม"),
          trailing: Icon(Icons.arrow_right),
        )
      ],
    ),);
  }
}
