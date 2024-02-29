import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  const Assignment({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Container",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w800,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration:  BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius:const  BorderRadius.all(
                      Radius.circular(20),
                    ),
                    border: Border.all(
                      color: Colors.yellow,
                      width: 10,
                    ),
                    gradient: const LinearGradient(
                      stops: [0.3,0.3],
                      colors: [Colors.red,Colors.black],
                    ),
                  ),
                  height: 200,
                  width: 200,
                  
                ),
              ],
            ),
          ],
        ));
  }
}
