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
          "hellow core2web",
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
      body: SingleChildScrollView(
        child:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
         
           SizedBox(height: 20,),
           Text("color",
           style: TextStyle(
            fontStyle: FontStyle.normal,
            color: Color.fromRGBO(89, 236, 5, 0.945),
            fontSize: 20,
            
           ),
           ),
              Container(
                height: 200,
                width: 360,
                color: Colors.orange,
                child:
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw-uuYfswUdGcIAPBl1hLxjvgwtJ9dCigCMnWX1iiZlA&s",
                ),
              ),
               
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 360,
                color: Colors.black,
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 360,
                color: Colors.green,
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 360,
                color: Colors.blue,
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 360,
                color: Colors.red,
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 360,
                color: Colors.yellow,
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 360,
                color: Colors.purple,
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 360,
                color: Colors.red,
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 360,
                color: Colors.grey,
              ),
              SizedBox(height: 20,),
              Container(
                height: 200,
                width: 360,
                color: Colors.purple,
              ),
            ],
          
        
      ),
        ),
      ),
    );
  }
}
