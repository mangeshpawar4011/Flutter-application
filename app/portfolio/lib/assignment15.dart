import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});
  @override
  State<Assignment> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Assignment> {
  int counter = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Portfolio",
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 255, 165, 0),
        onPressed: () {
          
          setState(() {
            counter++;
          });
        },
        child: const Text("add"),
      ),
      body:(counter>=0)
      ?Container(
       decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(255, 65, 105, 225), // Saffron
                   Color.fromARGB(255, 60, 179, 113), // Medium Sea Green
                   Color.fromRGBO(255, 138, 43, 226), // Green
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
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children: [
                  (counter>=1)
                   ?const  Text("Name:mangesh pawar",
                   style: TextStyle(fontSize:Checkbox.width,
                    ),
                   )
                   :Container(),
                   (counter>=2)
                      ?Container(
                            height: 150 ,
                            width: 120,
                            color:Colors.black,
                               child:Image.asset("myimage.jpg"),
                            margin:EdgeInsets.all(10),
                            )
                            :Container(),
                            SizedBox(height: 6),
                            (counter>=3)
                            ?const Text("College:MMCOE Pune ",
                             style: TextStyle(fontSize:Checkbox.width,
                    ),
                            )
                            :Container(),
                            SizedBox(height: 10),
                        (counter>=4)
                        ?Container(
                            height: 150,
                            width: 120,
                            child: Image.asset("logo.png"),
                          
                          )
                          :Container(),
                          SizedBox(height:12),
                          (counter>=5)
                          ?Text("Dream company:PTC",
                           style: TextStyle(fontSize:Checkbox.width,
                    ),
                          )
                          :Container(),
                          SizedBox(height: 4),
                           (counter>=6)
                           ?Container(
                            height: 150,
                            width: 120,
                            child:Image.asset("logocom.png"),
                            
                          )
                          :Container(),
                        
                  ],

      ),
    ),
      )
      :Container(),
    );
  }
}
