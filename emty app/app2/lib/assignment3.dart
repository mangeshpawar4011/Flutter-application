import 'package:flutter/material.dart';

void main(){

runApp(const Myapp());

}
class Myapp extends StatelessWidget{
 const Myapp({super.key});
@override
Widget build(BuildContext context){
return MaterialApp(
  home: Assignment3(),
);

}

}

class Assignment3 extends StatefulWidget{
  const Assignment3({super.key});

  @override
  State<Assignment3> createState()=> _Assignment3State();
}
class _Assignment3State extends State<Assignment3>{
  //Variables
  int? selectedIndex = 0;

  //List of Images
  final List<String> imageList=[
  "https://plus.unsplash.com/premium_photo-1669047670905-fa4331d07e06?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D","https://images.unsplash.com/photo-1597283712405-819a6021326c?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGhkJTIwcGhvdG9zfGVufDB8fDB8fHww",
   "https://media.istockphoto.com/id/1221473823/photo/circle-of-smoke.webp?b=1&s=170667a&w=0&k=20&c=76YhCUer9vjU-MzZFKXIPGARYqlb0VvbPzlM555OPSI="];

  void showNextImage(){
    setState((){
      selectedIndex = selectedIndex! + 1;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Images"
        ),
),
body: Center(child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
          Image.network(
            imageList[selectedIndex!],
            width: 300,
            height: 300,
          ),
const SizedBox(
  height: 20,
),
ElevatedButton(
  onPressed:showNextImage,
  child:const Text("next", ),
  ),
const SizedBox(
  height: 20,
),
ElevatedButton(
  onPressed:(){
    setState(() {
      selectedIndex = 0;
    });
  },
  child:const Text("reset", ),
  ),

  ],
),),
    );
  }
}