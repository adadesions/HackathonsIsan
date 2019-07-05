import 'package:flutter/material.dart';
import 'package:checkmate/components/app/app.dart';

void main() {
  runApp(MaterialApp(
    title: 'Router',
    initialRoute: '/',
    routes: {
      '/': (context) => App()
    },
  ));
}

