import 'package:flutter/material.dart';
import 'package:mod1/screens/food/dimens.dart';

class ItemPopular extends StatelessWidget {
  const ItemPopular({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: Dimens.horizontalPadding,
          vertical: 8,
        ),
        child: Stack(
          fit: StackFit.expand,
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 12,
              bottom: 0,
              left: 0,
              right: 120,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text('Top of weekend'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text('Primavera pizza'),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Text('450 gr'),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22, vertical: 12),
                        margin: const EdgeInsets.only(right: 12),
                        decoration: const BoxDecoration(
                            color: Colors.yellow,
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(32),
                              bottomLeft: Radius.circular(32),
                            )),
                        child: const Icon(Icons.add),
                      ),
                      const Text('5.0'),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: -38,
              child: Image.asset(
                'assets/1.png',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
