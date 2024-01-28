import 'package:flutter/material.dart';
//import 'assignment3.dart';
import 'assignment2.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: assignment2(),
    );
  }
}
