import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:mod1/models/converter_model.dart';

class ListConverterScreen extends StatelessWidget {
  const ListConverterScreen({super.key, required this.items});

  final List<ConverterModel> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Historial'),
        leading: IconButton(
          onPressed: () {
            if (Navigator.canPop(context)) {
              Navigator.of(context).pop();
            }
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (newcontext, i) {
          log('Index $i');
          final data = items[i];
          return ListTile(
            title: Text('Monto USD ${data.initialAmount}'),
            subtitle: Text('Monto Bs ${data.convertAmount}'),
          );
        },
      ),
    );
  }
}
