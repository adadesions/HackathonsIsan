import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromRGBO(11, 120, 17, 1),
      child: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                margin: EdgeInsets.fromLTRB(00, 30, 0, 0),
                child: Image.asset(
                  "assets/images/menu-cow.png",
                  height: 200,
                )),
            Container(
                margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
                child: Text('Welcome to CheckMate',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold))),
            Container(
              margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Text('The best app for Cow Checking',
                  style: TextStyle(color: Colors.grey[500], fontSize: 20)),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 80, 30, 0),
              child: RaisedButton(
                  child: Text("LOGIN TO CHECKMATE",
                      style: TextStyle(fontSize: 16)),
                  textColor: Color.fromRGBO(11, 120, 17, 1),
                  color: Colors.white,
                  padding: EdgeInsets.all(15),
                  onPressed: () => {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: RaisedButton(
                  child: Text("SIGN UP", style: TextStyle(fontSize: 16)),
                  textColor: Color.fromRGBO(11, 120, 17, 1),
                  color: Colors.white,
                  padding: EdgeInsets.all(15),
                  onPressed: () => {},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0))),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
              child: RaisedButton(
                  child: Text("LEARN MORE", style: TextStyle(fontSize: 16)),
                  textColor: Colors.white,
                  color: Colors.transparent,
                  padding: EdgeInsets.all(15),
                  onPressed: () => {},
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(30.0))),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Center(
                  child: Text('Version 0.9.0-alpha',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16,
                      ))),
            )
          ],
        ),
      )),
    );
  }
}
