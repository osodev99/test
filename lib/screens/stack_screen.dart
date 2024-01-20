import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack')),
      body: Container(
        color: Colors.purple,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              child: Container(
                color: Colors.red,
                child: const Text('Stack sss'),
              ),
            ),
            Positioned(
              top: 20,
              right: 50,
              left: 50,
              child: Container(
                color: Colors.green,
                child: const Text('Stack'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
