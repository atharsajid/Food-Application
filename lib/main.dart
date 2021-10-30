import 'package:flutter/material.dart';
import 'package:food_app/homescreen.dart/constructor.dart';
import 'package:food_app/detailedscreen/detailsceen.dart';
import 'package:food_app/homescreen.dart/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
