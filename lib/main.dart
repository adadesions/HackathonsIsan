import 'package:checkmate/components/main_menu/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:checkmate/components/app/app.dart';

void main() {
  runApp(MaterialApp(
    title: 'Router',
    initialRoute: '/',
    routes: {
      '/': (context) => App(),
      '/main_menu': (context) => MenuPage(),
    },
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Color.fromRGBO(11, 120, 17, 1),
      accentColor: Color.fromRGBO(123, 181, 57, 1),
    ),
  ));
}

