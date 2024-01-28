//import 'package:app2/assignment1.dart';
//import 'package:app2/assignment2.dart';
import 'package:flutter/material.dart';
import 'assignment4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Assignment1(),
    );
  }
}
