import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Center(
          child:Container(
                
             height: 150,
             width: 150,
             
            decoration: BoxDecoration(
            shape: BoxShape.circle,
             color: const Color.fromARGB(255, 193, 164, 164),
             border: Border.all(
              width: 3,
              color: const Color.fromRGBO(0, 0, 0, 1)
             ),
             boxShadow:const [
              BoxShadow(
                color: Colors.red,
                offset: Offset(10, 10),
                blurRadius: 20,

              )
             ]

            ),
             
            child: Image.network("https://cdn.pixabay.com/photo/2016/03/31/19/50/checklist-1295319_1280.png"),

          ),
        ),
      ),
    );
  }
}
