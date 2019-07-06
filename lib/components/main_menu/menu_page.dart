import 'dart:ui' as prefix0;

import 'package:checkmate/components/main_menu/ads.dart';
import 'package:checkmate/components/main_menu/menu_items.dart';
import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuPageState();
  }
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text('CHECKMATE',
                style: TextStyle(color: Colors.white, fontSize: 22))),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.transparent,
            margin: EdgeInsets.only(top: 180),
            alignment: Alignment.center,
            child: Image.asset('assets/images/cow-1.png',
                fit: BoxFit.fitWidth,
                color: Color.fromRGBO(255, 255, 255, 0.3),
                colorBlendMode: BlendMode.modulate),
          ),
          Column(
            children: <Widget>[
              Ads(),
              MenuItems(),
            ],
          )
        ],
      ),
    );
  }
}
