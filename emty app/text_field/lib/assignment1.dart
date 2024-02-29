import 'package:flutter/material.dart';
void main(){
  runApp(const Myapp());
}
class Myapp extends StatelessWidget{
const Myapp({super.key});

@override
Widget build(BuildContext context){
  return const MaterialApp(
    home: HomepageState(),
    debugShowCheckedModeBanner: false,
   );   

  }
}


class  HomepageState extends StatefulWidget{
 const HomepageState({super.key});
 @override
State createState()=> _HomepageState();

}
class _HomepageState extends State{
TextEditingController name = TextEditingController();
TextEditingController companyName = TextEditingController();
TextEditingController companyloc  = TextEditingController();
int count = 0;
List namecan= [];
List company = [];
List location=[];

@override
Widget build(BuildContext context){
return  Scaffold(
appBar: AppBar(
  title:const  Text("Portfolio"),
  backgroundColor:  Colors.cyan,
  centerTitle: true,
),

body:SingleChildScrollView(
  child:
 Column(

children: [
  const SizedBox(
    height: 30,
   ),
   Container(
    height: 50,
    width: 400,
child:
   TextField(
    controller: name,
    decoration:const InputDecoration(
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))
        
      ),
     hintText: 'Enter name',
     hintStyle: TextStyle(fontWeight: FontWeight.bold),
     
focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))
        ),     
   ),
      ),
   ),
 const SizedBox(
    height: 30,
  ),
Container(
  height: 50,
  width: 400,
  child: TextField(
    controller:companyName,
   decoration:const InputDecoration(
    border:OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(10)
      ),
      ),
      
    hintText: 'Company Name',
    hintStyle: TextStyle(fontWeight:FontWeight.bold),
    ),
  ),
),
const SizedBox(
  height: 30,
),
Container(
  height: 50,
  width: 400,
child: TextField(
    controller: companyloc,
  decoration:const InputDecoration(
    border:OutlineInputBorder(
      borderRadius:BorderRadius.all(Radius.circular(10)
        ),
      ),
focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)
        ),
      ),
  hintText: 'Company Location',
  hintStyle: TextStyle(fontWeight: FontWeight.bold),
  
  ),
),
),
const SizedBox(
  height: 30,
),
ElevatedButton(
  style:  const ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.cyan)),
  onPressed: (){
   setState(() {
     
     namecan.add(name.text);
     company.add(companyName.text);
     location.add(companyloc.text);
});
   name.clear();
   companyName.clear();
   companyloc.clear();
}, child:  const Text("Submit"),
  ),
 

ListView.builder(
  shrinkWrap: true,
itemCount: namecan.length,
itemBuilder: ( context,index){
return
Column(
  children:[
   const SizedBox(
      height: 30,
    ),
Container(
    height: 150,
    width: 400,
    
    margin: EdgeInsets.only(left: 5),
    decoration: BoxDecoration(
      border: Border.all(),
      
      borderRadius: BorderRadius.circular(10),
      
    ),
   child: Column(
   children:[   
   Text("Name : ${namecan[index]}",style:const TextStyle(color: Colors.black,fontSize: 20),),
 Text("Company Name : ${company[index]}",style:const TextStyle(color: Colors.black,fontSize: 20),),
   
  Text("Company Location:${location[index]}",style: const TextStyle(fontSize: 20),),
   
   ],
  )
)
],
);

  
},
),

    ],
  )
  ),
  );



}

}