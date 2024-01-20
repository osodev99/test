import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
              child: const Text('Data', style: TextStyle(fontSize: 48)),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: const Text('Data', style: TextStyle(fontSize: 48)),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.blue,
              child: const Text('Data', style: TextStyle(fontSize: 48)),
            ),
          ),
          Container(
              color: Colors.brown,
              child: const Text('Data', style: TextStyle(fontSize: 48)),
            ),
          
        ],
      ),
    );
  }
}
