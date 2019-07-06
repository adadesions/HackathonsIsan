import 'package:checkmate/components/heat/heat_list_page.dart';
import 'package:checkmate/components/main_menu/ads.dart';
import 'package:checkmate/components/main_menu/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class MenuPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MenuPageState();
  }
}

class _MenuPageState extends State<MenuPage> {
  FirebaseMessaging _firebaseMessaging = FirebaseMessaging();

  @override
  void initState() {
    super.initState();
    firebaseCloudMessaging_Listeners();
  }

  void firebaseCloudMessaging_Listeners() {
    _firebaseMessaging.getToken().then((token) {
      print(token);
    });

    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        // Navigator.pushNamed(context, '/heat');
      },
      onResume: (Map<String, dynamic> message) async {
        Navigator.pushNamed(context, '/heat');

      },
      onLaunch: (Map<String, dynamic> message) async {
        // Navigator.pushNamed(context, '/heat');
      },
    );
  }

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
