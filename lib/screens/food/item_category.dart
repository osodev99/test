import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  const ItemCategory({super.key}) : isSelected = false;

  const ItemCategory.selected({super.key}) : isSelected = true;

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: 150,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        color: isSelected ? Colors.yellow : Colors.white,
        margin: const EdgeInsets.only(right: 22, top: 4, bottom: 4),
        child: Column(
          children: [
            Expanded(child: Image.asset('assets/1.png')),
            const Text('Pizza'),
            const SizedBox(height: 6),
            const Icon(Icons.arrow_forward_ios),
            const SizedBox(height: 12)
          ],
        ),
      ),
    );
  }
}
