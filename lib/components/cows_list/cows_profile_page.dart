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
            cowSymbol: cowInfo['symbol'],
          ),
          _CowMiddleBar(
            cowGenetic: 'H. Friesian',
            cowStatus: cowInfo['status'],
            cowBirth: '02/01/2535',
          ),
          _CowInformation(),
        ],
      ),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}

class _CowProfileHeader extends StatelessWidget {
  final String imagePath;
  final String cowId;
  final String cowSymbol;

  _CowProfileHeader({this.imagePath, this.cowId, this.cowSymbol});

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
            child: Text(cowSymbol, style: TextStyle(fontSize: 30)),
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

class _CowInformation extends StatelessWidget {
  final TextStyle labelStyle = new TextStyle(
    fontSize: 18.0,
    color: Colors.grey[600],
  );

  final TextStyle infoStyle = new TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Colors.grey[900],
  );

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              children: <Widget>[
                Icon(Icons.info,
                    color: Theme.of(context).primaryColor, size: 35),
                Text(
                  'Information',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600]),
                )
              ],
            ),
          ),
          Container(
            height: 37,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              border:
                  Border.all(width: 1.0, color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: _CowInfoText(labelText: 'Name', infoText: 'มณีจันทร์'),
          ),
          Container(
            height: 130,
            margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
            decoration: BoxDecoration(
              border:
                  Border.all(width: 1.0, color: Theme.of(context).primaryColor),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Column(children: <Widget>[
              Image.asset('assets/images/cow-5.png', height: 50,),
              _CowInfoText(labelText: 'Father', infoText: 'สุริยา'),
              _CowInfoText(labelText: 'Mother', infoText: 'วีนัส'),
            ],)
          ),
        ],
      ),
    );
  }
}

class _CowInfoText extends StatelessWidget {
  final String labelText;
  final String infoText;

  _CowInfoText({this.labelText, this.infoText});

  final TextStyle labelStyle = new TextStyle(
    fontSize: 18.0,
    color: Colors.grey[600],
  );

  final TextStyle infoStyle = new TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Colors.grey[900],
  );

  Widget build(BuildContext build) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(15, 5, 10, 5),
          child: Text(
            '$labelText:',
            style: labelStyle,
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(5, 5, 10, 5),
          child: Text(
            '$infoText',
            style: infoStyle,
          ),
        ),
      ],
    );
  }
}
