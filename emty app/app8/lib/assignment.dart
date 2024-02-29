import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});
  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  List intview = [];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: const Text("listview"),
      ),
      body: ListView.builder(
          itemCount: intview.length,
          itemBuilder: (context, index) {
            return Container(
              height: 100,
              width: 300,
              margin: const EdgeInsets.all(10),
              color: Colors.orange,
              child: Text("${intview[index]}"),
            );
          }),
      floatingActionButton: FloatingActionButton(onPressed: () {
        setState(() {
          count++;
          intview.add(count);
        });
        
      },
      child:const Text("Next"),
      ),
    );
  }
}
