import 'package:flutter/material.dart';

class Assignment extends StatefulWidget {
  const Assignment({super.key});
  @override
  State<Assignment> createState() => _AssignmentState();
}

class _AssignmentState extends State<Assignment> {
  TextEditingController name = TextEditingController();
  TextEditingController company = TextEditingController();
  TextEditingController location = TextEditingController();
  int count = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("text field"),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: name,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              hintText: AutofillHints.givenName,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: company,
            decoration: const InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: "Company Name"),
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: location,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              hintText: AutofillHints.location,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                count++;
              });
            },
            style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.black),
            ),
            child: const Text("Submit"),
          ),
          (count > 0)
              ? Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    
                    Container(
                      height: 80,
                      width: 300,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(children: [
                        Text(" Name: ${name.text}"),
                        Text("Company Name: ${company.text}"),
                        Text("Location : ${location.text}"),
                      ]),
                    ),
                  ],
                )
              : Container(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            name.clear();
            company.clear();
            location.clear();
            count = 0;
          });
        },
        child: const Text("add"),
      ),
    );
  }
}
