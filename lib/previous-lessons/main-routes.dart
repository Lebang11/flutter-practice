import 'package:flutter/material.dart';
import 'package:flutter_practice/pages/choose-location.dart';
import 'package:flutter_practice/pages/home.dart';
import 'package:flutter_practice/pages/loading.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => const Loading(),
      '/home': (context) => const Home(),
      '/location': (context) => const ChooseLocation()
    },
  ));
}
