import 'package:flutter/material.dart';

class Assignment extends StatelessWidget {
  const Assignment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          
          "FLAG",
          style: TextStyle(fontStyle: FontStyle.normal,
          fontSize: 30,
          ),
        ),
        centerTitle: true,
        actions: [
           const  Icon(Icons.message),
           const Icon(Icons.notification_add),
         
        ],
      ),
      body: Container(
        decoration:const  BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(255, 153, 51, 1), // Saffron
              Colors.white, // White
              Color.fromRGBO(18, 136, 7, 1), // Green
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.0, 0.5, 1.0],
          ),
        ),
        child: Container(
          height: 1000,
          width: 3000,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 400,
                color: Colors.orange,
              ),
              Container(
                height: 100,
                width: 400,
                color: Colors.white,
                child: Image.network("https://media.istockphoto.com/id/1182479181/vector/ashoka-chakra.jpg?s=612x612&w=0&k=20&c=bDrv1c_tw5pOa-R0Agg62ZjeMJl3S22Trk-ViEhJiIU=",
                  //fit: BoxFit.cover,
                ),
              ),
              Container(
                height: 100,
                width: 400,
                color: Colors.green,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'HAPPY',
                style: TextStyle(
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  shadows: [
                    Shadow(
                      color: Colors.orange,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 0.0,
                    ),
                  ],
                ),
              ),
              const Text(
                'REPUBLIC ',
                style: TextStyle(
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  shadows: [
                    Shadow(
                      color: Colors.lightBlue,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 0.0,
                    ),
                  ],
                ),
              ),
              const Text(
                'DAY',
                style: TextStyle(
                  fontSize: 35,
                  fontStyle: FontStyle.italic,
                  shadows: [
                    Shadow(
                      color: Colors.green,
                      offset: Offset(2.0, 2.0),
                      blurRadius: 0.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}