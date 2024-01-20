import 'package:flutter/material.dart';

class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
      ),
      body: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.red,
            child: const Text('Data', style: TextStyle(fontSize: 48)),
          ),
          Expanded(
            child: Container(
              color: Colors.green,
              child: const Text('Data', style: TextStyle(fontSize: 48)),
            ),
          ),
          Container(
            color: Colors.blue,
            child: const Text('Data', style: TextStyle(fontSize: 48)),
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
