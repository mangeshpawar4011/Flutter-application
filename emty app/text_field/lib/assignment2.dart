import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LifeCycle(),
    );
  }
}

class LifeCycle extends StatefulWidget {
  const LifeCycle({super.key});

  @override
  State createState() => _LifeCycleState();
}

class _LifeCycleState extends State {
  int count = 0;
  @override
  void initState() {
    super.initState();
    print("Init");
  }

  void didChangeDependencies() {
    super.didChangeDependencies();
    print("In Did");
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Life Cycle"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("$count"),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count++;
                  });
                },
                child: const Icon(Icons.add)),
          ],
        ),
      ),
    );
  }
}