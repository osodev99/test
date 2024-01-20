import 'dart:developer';

import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {

  Color bodyColor = Colors.blue;
  var counter = 0;
  var textResult = 'Neutro';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    log('Build counter screen');
    return Scaffold(
      backgroundColor: bodyColor,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(textResult,
                style:
                    const TextStyle(fontSize: 62, fontWeight: FontWeight.bold)),
            Text('$counter', style: const TextStyle(fontSize: 62)),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          textResult = (counter % 2 == 0) ? 'Es par' : 'Es impar';
          bodyColor = (counter % 2 == 0) ? Colors.red : Colors.blue;

          setState(() {});
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

///
///
///
///
///
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
