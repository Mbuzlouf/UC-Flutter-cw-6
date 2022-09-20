import 'package:flutter/material.dart';
import 'package:ma3lam/Screens/home.dart';
import 'package:ma3lam/Screens/place.dart';
import 'package:ma3lam/models/places.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myhome(),
    );
  }
}
