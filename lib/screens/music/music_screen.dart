import 'package:flutter/material.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const colorIcon = Colors.white;
    const sizeIcon = 42.0;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/3.png'),
            fit: BoxFit.cover,
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            const SizedBox(height: 32),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.menu, color: colorIcon, size: sizeIcon),
                Icon(Icons.search, color: colorIcon, size: sizeIcon),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'a\naa\na\na',
                  style: TextStyle(color: colorIcon, fontSize: 28),
                ),
                Container(height: 4, color: Colors.red),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.favorite_outline,
                        color: colorIcon, size: sizeIcon),
                    Icon(Icons.arrow_back, color: colorIcon, size: sizeIcon),
                    Icon(Icons.play_arrow, color: colorIcon, size: sizeIcon),
                    Icon(Icons.arrow_forward, color: colorIcon, size: sizeIcon),
                    Icon(Icons.share, color: colorIcon, size: sizeIcon),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 42),
          ],
        ),
      ),
    );
  }
}
