import 'package:flutter/material.dart';
import 'assignment.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home:Assignment(),
      debugShowCheckedModeBanner: false,
    );
  }
}
