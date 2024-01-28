import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});

  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "hellowcore2web",
          style: TextStyle(
            fontStyle: FontStyle.normal,
            color: Color.fromARGB(255, 240, 238, 238),
            fontSize: 30,
          ),
        ),
        centerTitle: true,
        actions: [
          const Icon(Icons.favorite_border_outlined),
          const Icon(Icons.access_alarm_rounded),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 360,
                color: Colors.orange,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
