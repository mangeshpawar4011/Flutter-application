import 'package:flutter/material.dart';

class Assignment1 extends StatefulWidget {
  Assignment1({Key? key}) : super(key: key);

  @override
  _Assignment2State createState() => _Assignment2State();
}

class _Assignment2State extends State<Assignment1> {
  int count = 0;
  List<int> arr = [153];

  /*void palindrome() {
    setState(() {
      count = 0; // Reset count before checking palindrome numbers
      for (int i = 0; i < num.length; i++) {
        int temp = num[i];
        int rev = 0;

        while (temp != 0) {
          int rem = temp % 10;
          rev = rev * 10 + rem;
          temp = temp ~/ 10;
        }

        if (rev == num[i]) {
          print(num[i]);
          count++;
        }
      }
    });
  }*/
  void amstrong() {
    for (int i = 0; i < arr.length; i++) {
      int num = arr[i];
      int cnt = 0, sum = 0;
      while (num != 0) {
        cnt++;
        num = num ~/ 10;
      }
      num = arr[i];
      while (num != 0) {
        int mult = 1;
        int rem = num % 10;
        for (int j = 1; j <= cnt; j++) {
          mult = mult * rem;
        }
        sum = sum + mult;
        num = num ~/ 10;
      }
      if (sum == arr[i]) {
        count++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Palindrome Checker"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Click button to print palindrome values"),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Count: $count",
            ),
            const SizedBox(
              height: 20,
            ),
            /*ElevatedButton(
              onPressed: palindrome,
              child: const Text("Print Palindromes"),
            ),*/
            ElevatedButton(
              onPressed: amstrong,
              child: const Text("Print Palindromes"),
            ),
          ],
        ),
      ),
    );
  }
}
