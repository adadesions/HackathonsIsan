import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Wrap(children: <Widget>[
        Item(title: 'Cow List', imagePath: 'assets/images/menu-cow.png'),
        Item(title: 'Cow List', imagePath: 'assets/images/menu-my_farm.png'),
        Item(title: 'Cow List', imagePath: 'assets/images/menu-heat.png'),
        Item(title: 'Cow List', imagePath: 'assets/images/menu-breeding.png'),
      ]),
    );
  }
}

class Item extends StatelessWidget {
  final String title;
  final String imagePath;

  Item({this.title, this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 10, 10, 0),
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Colors.grey[100],
          border: Border.all(color: Colors.grey[300]),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Column(
        children: <Widget>[
          Image.asset(
            this.imagePath,
            width: 100,
            height: 100,
          ),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Text(this.title,
                style: TextStyle(color: Colors.grey[500], fontSize: 22)),
          )
        ],
      ),
    );
  }
}
