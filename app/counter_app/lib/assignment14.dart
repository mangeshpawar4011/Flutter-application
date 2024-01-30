import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int counter = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("INDIAN FLAG"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor:Color.fromARGB(248, 0, 0, 0),
        
        onPressed: () {
          setState(() {
            counter++;
          });
          
        },
        child: const Text('add'),
      ),
      body: (counter >= 0)
          ? Container(
              decoration: const BoxDecoration(
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
                    (counter >= 1)
                        ? Container(
                            height: 100,
                            width: 400,
                            color: Colors.orange,
                          )
                        : Container(),
                    (counter >= 2)
                        ? Container(
                            height: 100,
                            width: 400,
                            color: Colors.white,
                            child: (counter >= 3)
                                ? Image.network(
                                    "https://media.istockphoto.com/id/1182479181/vector/ashoka-chakra.jpg?s=612x612&w=0&k=20&c=bDrv1c_tw5pOa-R0Agg62ZjeMJl3S22Trk-ViEhJiIU=",
                                    //fit: BoxFit.cover,
                                  )
                                : Container(),
                          )
                        : Container(),
                    (counter >= 4)
                        ? Container(
                            height: 100,
                            width: 400,
                            color: Colors.green,
                          )
                        : Container(),
                    const SizedBox(
                      height: 10,
                    ),
                    (counter >= 5)
                        ? const Text(
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
                          )
                        : Container(),
                    (counter >= 6)
                        ? const Text(
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
                          )
                        : Container(),
                    (counter >= 7)
                        ? const Text(
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
                          )
                        : Container(),
                  ],
                ),
              ),
            )
          : Container(),
    );
  }
}
