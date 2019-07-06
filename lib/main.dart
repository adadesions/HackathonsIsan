import 'package:checkmate/components/cows_list/cows_list_page.dart';
import 'package:checkmate/components/cows_list/cows_profile_page.dart';
import 'package:checkmate/components/heat/heat_list_page.dart';
import 'package:checkmate/components/main_menu/menu_page.dart';
import 'package:flutter/material.dart';
import 'package:checkmate/components/app/app.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Router',
    initialRoute: '/',
    routes: {
      '/': (context) => App(),
      '/main_menu': (context) => MenuPage(),
      '/cows_list': (context) => CowsListPage(),
      '/cows_profile': (context) => CowsProfilePage(),
      '/heat': (context) => HeatListPage(),

    },
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Color.fromRGBO(11, 120, 17, 1),
      accentColor: Color.fromRGBO(123, 181, 57, 1),
    ),
  ));
}

