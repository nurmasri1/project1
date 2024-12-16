import 'package:flutter/material.dart';
import 'package:projict1test2/index.dart';
import 'package:projict1test2/page1.dart';
import 'package:projict1test2/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1()// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
