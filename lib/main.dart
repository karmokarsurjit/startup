import 'package:flutter/material.dart';
import 'package:startup/tests/sclist_wicons.dart';
//import 'package:startup/tests/english_words.dart';
//import 'package:startup/tests/startup.dart';
import 'package:startup/tests/scrollable_widget.dart';
import 'package:startup/tests2/explore_checkbox.dart';
//import 'package:startup/tests/stateful_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: ExplorePlanets(),
    );
  }
}