import 'package:checkmate/components/app/bottom_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CowsProfilePage extends StatelessWidget {
  final Map<String, dynamic> cowInfo;

  CowsProfilePage({this.cowInfo});

  @override
  Widget build(BuildContext context) {
    final String title = 'cows list';
    return Scaffold(
      appBar: AppBar(
        title: Text(title.toUpperCase()),
      ),
      body: Column(
        children: <Widget>[
          _CowProfileHeader(
            imagePath: 'assets/images/cow_profile.jpg',
            cowId: cowInfo['id'],
            cowName: cowInfo['name'],
          ),
          _CowMiddleBar(cowGenetic: 'H. Friesian', cowStatus: cowInfo['status'], cowBirth: '02/01/2535',),
        ],
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}

class _CowProfileHeader extends StatelessWidget {
  final String imagePath;
  final String cowId;
  final String cowName;

  _CowProfileHeader({this.imagePath, this.cowId, this.cowName});

  Widget build(BuildContext context) {
    final TextStyle headerStyle = new TextStyle(
      fontSize: 20.0,
      color: Colors.grey[600],
    );

    return Container(
      margin: EdgeInsets.only(top: 20),
      alignment: Alignment.center,
      child: Column(
        children: <Widget>[
          Image.asset(
            this.imagePath,
            fit: BoxFit.contain,
            width: 250,
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(cowId, style: headerStyle),
          ),
          Padding(
            padding: EdgeInsets.only(top: 3),
            child: Text(cowName, style: headerStyle),
          ),
        ],
      ),
    );
  }
}

class _CowMiddleBar extends StatelessWidget {
  final String cowGenetic;
  final String cowStatus;
  final String cowBirth;

  _CowMiddleBar({this.cowGenetic, this.cowStatus, this.cowBirth});

  final TextStyle topStyle = new TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white);

  final TextStyle bottomStyle =
      new TextStyle(fontSize: 14, color: Colors.grey[700]);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
        decoration: BoxDecoration(
            color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 5, bottom: 5),
              child: Column(
                children: <Widget>[
                  Text(this.cowGenetic, style: topStyle),
                  Text(
                    'Genetics',
                    style: bottomStyle,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                children: <Widget>[
                  Text(this.cowStatus, style: topStyle),
                  Text(
                    'Status',
                    style: bottomStyle,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: Column(
                children: <Widget>[
                  Text(this.cowBirth, style: topStyle),
                  Text(
                    'Birthday',
                    style: bottomStyle,
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
