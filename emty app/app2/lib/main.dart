//import 'package:app2/assignment1.dart';
//import 'package:app2/assignment2.dart';
import 'package:app2/assignment3.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Assignment3(),
    );
  }
}
