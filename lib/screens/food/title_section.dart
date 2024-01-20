import 'package:flutter/material.dart';
import 'package:mod1/screens/food/dimens.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: Dimens.horizontalPadding),
      child: Text(
        text,
        style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
    );
  }
}
