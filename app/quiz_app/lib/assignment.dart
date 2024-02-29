import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});
  @override
  State<Assignment> createState() => _AssignmentState();
}

class Modelclass {
  final String? question;
  final List<String>? option;
  final int? answerindex;
  const Modelclass({this.question, this.option, this.answerindex});
}

class _AssignmentState extends State<Assignment> {
  List allquestion = [
    (
      question: "indian played first test match against_____?",
      option: [
        "south africa",
        "england",
        "pakistan",
        "austrilia"
      ],
      answerindex: 1,
    ),
    (
      question: "which of the following is first indian to score century in ODI?",
      option: [
        "kapil dev",
        "sachin tendulkar",
        "mohinder amarnath",
        "ajit wadekar"
      ],
      answerindex: 0,
    ),
    (
      question: "india of the first cricket world cup championship in year____?",
      option: [
        "1987",
        "1983",
        "2011",
        "1979"
      ],
      answerindex: 2,
    ),
    (
      question: "who is first indian batsman to play 400+ ODI matches ?",
      option: [
        "sachin tendulkar",
        "saurav ganguly",
        "ravi shastri",
        "none of these"
      ],
      answerindex: 0,
    ),
    (
      question: "who was first captain pf indian test team ?",
      option: [
        "vijay hajare",
         "lala amarnath",
        "vijay marchant",
        "C K nayadu"
       
      ],
      answerindex: 3,
    ),
  ];

  bool screen = true;
  int questionindex = 0;
  int answerindex1 = -1;
  int correctans = 0;
  
     void nextque() {
    if (answerindex1 == -1) {
      return;
    }
    if (answerindex1 == allquestion[questionindex].answerindex) {
      correctans++;
    }
    if (answerindex1 != -1) {
      if (questionindex == allquestion.length - 1) {
        screen = false;
      }
      setState(() {
        questionindex++;
        answerindex1 = -1;
      });
    }
  
  }
   MaterialStateProperty<Color> colorfun(int button) {
    if (answerindex1 != -1) {
      if (button == allquestion[questionindex].answerindex) {
        return const MaterialStatePropertyAll(Color.fromARGB(255, 3, 244, 64));
      } else if (button == answerindex1) {
        return const MaterialStatePropertyAll(Color.fromARGB(255, 232, 4, 4));
      } else {
        return const MaterialStatePropertyAll(Colors.white10);
      }
    } else {
      return const MaterialStatePropertyAll(Colors.black54);
    }
  }
  Scaffold screenchange() {
    if (screen == true) {
      return Scaffold(
        appBar: AppBar(
          toolbarHeight: 60,
          title: const Text(
            "Quiz App",
            style: TextStyle(
              
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.cyan,
        ),
        body:Container(
          
          decoration:  BoxDecoration(
            color: Colors.yellowAccent,
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
              ),
              border: Border.all(
                color:Colors.deepOrangeAccent,
                width: 6,
              )
          ),
        
         child:Column(
          
          children: [
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Questions : ",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "${questionindex + 1}/${allquestion.length}",
                     
                  style: const TextStyle(
                      fontSize: 23, fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                 SizedBox(height: 120,
                 width: 350,
                child:Text(
                  allquestion[questionindex].question,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                 ),
              ],
            ),
            Column(
              children: [
                const SizedBox(height: 10),
                SizedBox(
                    height: 60,
                    width: 390,
                child:ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: colorfun(0),
                    
                    ),
                    
                  onPressed: () {
                    if (answerindex1 == -1) {
                      setState(() {
                        answerindex1 = 0;
                      });
                    }
                  },
                  child: Text("A.${allquestion[questionindex].option[0]}",
                  style: const TextStyle(
                    wordSpacing: BorderSide.strokeAlignCenter,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    
                  ),
                  ),
                ),
            ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 60,
                    width: 390,
                child:ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: colorfun(1),
                      ),
                  onPressed: () {
                    if (answerindex1 == -1) {
                      setState(() {
                        answerindex1 = 1;
                      });
                    }
                  },
                  child: Text("B.${allquestion[questionindex].option[1]}",
                  style: const TextStyle(
                    wordSpacing: BorderSide.strokeAlignCenter,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    
                  ),
                  ),
                ),
            ),
                const SizedBox(
                  height: 20,
                ),
               SizedBox(
                    height: 60,
                    width: 390,
                child:ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: colorfun(2),
                    
                  ),
                  onPressed: () {
                    if (answerindex1 == -1) {
                      setState(() {
                        answerindex1 = 2;
                      });
                    }
                  },
                  child: Text("C.${allquestion[questionindex].option[2]}",
                  style: const TextStyle(
                    wordSpacing: BorderSide.strokeAlignCenter,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    
                  ),
                  ),
                ),
            ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                    height: 60,
                    width: 390,
                child:ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: colorfun(3),
                    
                    
                  ),
                  onPressed: () {
                    if (answerindex1 == -1) {
                      setState(() {
                        answerindex1 = 3;
                      });
                    }
                  },
                  child: Text("D.${allquestion[questionindex].option[3]}",
                  style: const TextStyle(
                    wordSpacing: BorderSide.strokeAlignCenter,
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    
                  ),
                  ),
                ),
            ),
              ],
            )
          ],
        ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              nextque();
            },
            backgroundColor: Colors.cyan,
            child: const Icon(Icons.arrow_forward_sharp)),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: const Text("Quiz App",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w800,
          ),
          ),
          centerTitle: true,
        ),
        body:  Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network("https://i.pinimg.com/736x/4a/08/30/4a083000a80262e2ccd897a6f7bfbd36.jpg",
              height: 300,
              width: 300,
              ),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
         Text("congratulations !!!",
         style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w700,
          color: Color.fromARGB(255, 103, 33, 8),
         ),
         ),
          ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             const SizedBox(height: 15),
                 Text(
                "You have completed the Quiz= $correctans/${allquestion.length}",
              style: const TextStyle(
              fontSize: 23,
              fontWeight: FontWeight.w500,
          ),
           ),
          
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
            onPressed: () {

             questionindex = 0;
             screen = true;
             correctans = 0;
             answerindex1 = -1;
            setState(() {});
               },
          child: const Text(
                "Reset",
             style: TextStyle(
             fontSize: 20,
             fontWeight: FontWeight.normal,
             color: Colors.black,
              ),
              ),
              ),
            ],
          ),
         ],

        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return screenchange();
  }
}
