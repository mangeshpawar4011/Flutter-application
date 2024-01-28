import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("app bar"),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                
              Container(
                width: 100,
                height: 100,
                color: Colors.redAccent,
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 219, 223, 1),
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 4, 189, 241),
              ),
                ],
            ),
             Row(
              mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 9, 237, 97),
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(255, 209, 6, 182),
              ),
              Container(
                width: 100,
                height: 100,
                color: const Color.fromARGB(230, 15, 14, 14),
              ),
                ],
            ),
            
          ],
        ),
        ),
        

        );
  }
}
