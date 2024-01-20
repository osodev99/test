import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mod1/screens/food/dimens.dart';
import 'package:mod1/screens/food/item_category.dart';
import 'package:mod1/screens/food/item_popular.dart';
import 'package:mod1/screens/food/title_section.dart';

class FoodScreen extends StatelessWidget {
  const FoodScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final arg = ModalRoute.of(context)?.settings.arguments;

    if (arg is String) {
      log('===========> Args $arg');
    }

    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: CircleAvatar(backgroundImage: AssetImage('assets/1.png')),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(Icons.line_axis),
          ),
        ],
      ),
      body: const SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: Dimens.horizontalPadding),
              child: Text(
                'Food\nDelivery',
                style: TextStyle(fontSize: 48),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Dimens.horizontalPadding),
              child: Row(
                children: [Icon(Icons.search), Text('Search...')],
              ),
            ),
            TitleSection(text: 'Categorias'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.only(left: Dimens.horizontalPadding),
              child: Row(
                children: [
                  ItemCategory.selected(),
                  ItemCategory(),
                  ItemCategory(),
                ],
              ),
            ),
            TitleSection(text: 'Popular'),
            ItemPopular(),
            ItemPopular(),
            ItemPopular(),
          ],
        ),
      ),
    );
  }
}
