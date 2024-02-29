import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});
  @override
  State<Assignment> createState() => _AssignmentState();
}

class Modelfun {
  String title;
  String discription;
  String date;
  Modelfun(
      {required this.title, required this.discription, required this.date});
}

class _AssignmentState extends State<Assignment> {
  TextEditingController titlecon = TextEditingController();
  TextEditingController discriptioncon = TextEditingController();
  TextEditingController datecon = TextEditingController();
  List<Color> color = [
    const Color.fromARGB(255, 247, 251, 1),
    const Color.fromARGB(255, 231, 3, 227),
    const Color.fromARGB(255, 10, 230, 226),
    const Color.fromARGB(255, 232, 164, 5),
  ];
  List<Modelfun> card = [];
  bool edit = false;
  int? selectedindex;

  gun() {
    String titletrim = titlecon.text.trim();
    String discriptiontrim = discriptioncon.text.trim();
    String datetrim = datecon.text.trim();

    if (titletrim.isNotEmpty &&
        discriptiontrim.isNotEmpty &&
        datetrim.isNotEmpty) {
      if (edit == true) {
        setState(() {
          card[selectedindex!] = (Modelfun(
              title: titlecon.text.trim(),
              discription: discriptioncon.text.trim(),
              date: datecon.text.trim()));
          edit = false;
        });
      } else {
        setState(() {
          card.add(Modelfun(
              title: titlecon.text.trim(),
              discription: discriptioncon.text.trim(),
              date: datecon.text.trim()));
        });
      }
    }
    titlecon.clear();
    discriptioncon.clear();
    datecon.clear();
    
  }

  fun() {
    showModalBottomSheet(
        //backgroundColor: const Color.fromRGBO(213, 228, 5, 0.509),
        backgroundColor: const Color.fromARGB(245, 65, 225, 16),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        isScrollControlled: true,
        context: context,
        builder: ((BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Create task",
                  style: GoogleFonts.quicksand(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 5),
                      Text(
                        "Title:",
                        style: GoogleFonts.quicksand(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "enter title",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                width: 3,
                                color: Color.fromRGBO(247, 2, 2, 1),
                              ),
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                          ),
                          controller: titlecon,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "discription:",
                        style: GoogleFonts.quicksand(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "discription",
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                  color: Color.fromRGBO(252, 1, 1, 1),
                                  width: 3),
                            ),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black)),
                          ),
                          controller: discriptioncon,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Date:",
                        style: GoogleFonts.quicksand(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: TextField(
                          readOnly: true,
                          decoration: InputDecoration(
                            suffixIcon: const Icon(Icons.date_range_rounded),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                    width: 3,
                                    color: Color.fromRGBO(243, 0, 0, 1))),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          controller: datecon,
                          onTap: () async {
                            DateTime? pickeddate = await showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2024),
                              lastDate: DateTime(2025),
                            );
                            String formatedDate =
                                DateFormat.yMMMd().format(pickeddate!);
                            setState(() {
                              datecon.text = formatedDate;
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      )
                    ]),
                Container(
                  height: 45,
                  width: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(30)),
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          gun();
                          Navigator.of(context).pop();
                        });
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 249, 115, 5),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadiusDirectional.circular(15))),
                      child: const Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(0, 0, 0, 1)),
                      )),
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          );
        }));
  }

  @override
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "To-do list",
          style: GoogleFonts.quicksand(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 237, 2, 2),
      ),
      body: Container(
        color: const Color.fromARGB(92, 248, 249, 249),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView.builder(
              itemCount: card.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  // height: 112,
                  //width: 300,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(10, 10),
                        color: Color.fromRGBO(0, 0, 0, 1),
                        blurRadius: 5,
                        
                      )
                    ],
                    color: color[index % color.length],
                    border: Border.all(width: 2),
                  ),
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 52,
                              width: 52,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 58, 55, 55),
                              ),
                              child: Image.network(
                                  "https://cdn-icons-png.flaticon.com/512/5996/5996831.png"),
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      card[index].title,
                                      style: GoogleFonts.quicksand(
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      card[index].discription,
                                      style: GoogleFonts.quicksand(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                          ],
                        ),
                        Row(
                          children: [
                            Text(card[index].date),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                edit = true;
                                selectedindex = index;
                                titlecon.text = card[index].title;
                                discriptioncon.text = card[index].discription;
                                datecon.text = card[index].date;

                                fun();
                              },
                              icon: const Icon(Icons.edit),
                            ),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  card.removeAt(index);
                                });
                              },
                              icon: const Icon(Icons.delete),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: const Color.fromARGB(255, 90, 217, 5),
        tooltip: "Add card",
        onPressed: () {
          fun();
        },
        backgroundColor: const Color.fromARGB(255, 254, 1, 1),
        child: const Text(
          "Add",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
