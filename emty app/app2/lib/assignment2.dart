import 'package:flutter/material.dart';

void main(){

  runApp(const Myapp());
} 
class Myapp extends StatelessWidget{
        
        const Myapp({super.key});

        @override
        Widget build(BuildContext context){
          return MaterialApp(
            home: Assignment2(),
          );
}
}
class Assignment2 extends StatefulWidget{

       Assignment2({super.key});

       @override
       State<Assignment2> createState()=> Assignment2State();

}
class Assignment2State extends State<Assignment2>{

bool box1color = false;
bool box2color = false; 
@override
Widget build(BuildContext context){

  return Scaffold(
    appBar: AppBar(
      title: const Text("color box"),
    backgroundColor: Colors.blue,
    ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
               children: [
                //box1
              Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: box1color? Colors.red: Colors.black,
                   ),
                   const SizedBox(
                    height: 20,
                   ),

//Box1 button
ElevatedButton(
onPressed: (){
setState ((){
       box1color  = true;

});

},
child: const Text("color Box1"),
),
],
),

const SizedBox(
  width: 20,
),
//box2
Column(
  children: [
    Container(
     height: 100,
     width: 100,
     color: box2color? Colors.blue:Colors.black,

    ),
    const SizedBox(
      height: 20,
    ),
 //Box2 button
ElevatedButton(
onPressed: (){
setState((){
       box2color = true;

});
},
child: const Text("color Box2"),
),
const SizedBox(
  width: 20,
), 
  
  ],
),
const SizedBox(
  width: 20,
),
               ],
            ),
          ],
      ),  
  );
              

        



}

}