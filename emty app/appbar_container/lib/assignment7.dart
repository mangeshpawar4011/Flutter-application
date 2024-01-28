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
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Image.network(
                    "https://images.unsplash.com/photo-1541411438265-4cb4687110f2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aGQlMjBwaG90b3N8ZW58MHx8MHx8fDA%3D",
                  height:300,
                  width: 150, 
                ), 
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Image.network(
                    "https://images.unsplash.com/photo-1541411438265-4cb4687110f2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aGQlMjBwaG90b3N8ZW58MHx8MHx8fDA%3D",
                  height:300,
                  width: 150, 
                ), 
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Image.network(
                    "https://images.unsplash.com/photo-1541411438265-4cb4687110f2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aGQlMjBwaG90b3N8ZW58MHx8MHx8fDA%3D",
                  height:300,
                  width: 150, 
                ), 
                SizedBox(
                  height: 20,
                  width: 20,
                ),
                Image.network(
                    "https://images.unsplash.com/photo-1541411438265-4cb4687110f2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8aGQlMjBwaG90b3N8ZW58MHx8MHx8fDA%3D",
                  height:300,
                  width: 150, 
                ),   
     
              ],
            ),
          )
        ],
      ),
    );
  }
}
