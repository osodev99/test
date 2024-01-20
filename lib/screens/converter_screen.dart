import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mod1/models/converter_model.dart';
import 'package:mod1/screens/exit_widget.dart';
import 'package:mod1/screens/list_converters_screen.dart';
import 'package:mod1/utils/app_constants.dart';

class ConverterScreen extends StatefulWidget {
  const ConverterScreen({super.key, required this.amount});

  final double amount;

  @override
  State<ConverterScreen> createState() => _ConverterScreenState();
}

class _ConverterScreenState extends State<ConverterScreen> {
  String value1 = '';
  TextEditingController firstCont = TextEditingController();
  TextEditingController controller = TextEditingController();
  bool showError1 = false;
  bool showError2 = false;
  final dataList = <ConverterModel>[];

  @override
  void initState() {
    firstCont.text = widget.amount.toString().replaceAll('.', ',');
    value1 = firstCont.text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 38);
    const baseDecoration = InputDecoration(
      border: OutlineInputBorder(),
      labelText: 'Monto a convertir',
      hintText: 'Ingrese el monto',
    );

    return WillPopScope(
      onWillPop: () {
        showDialog(
          context: context,
          builder: (newContext) {
            return AlertDialog(
              title: const Text('Atencion'),
              content: const Text('Estas seguro de salir de la aplicacion?'),
              actions: [
                TextButton(
                  onPressed: () {
                    Navigator.pop(newContext);
                  },
                  child: const Text('Cancelar'),
                ),
                TextButton(
                  onPressed: () {
                    if (Platform.isAndroid) {
                      SystemNavigator.pop();
                    } else {
                      exit(0);
                    }
                  },
                  child: const Text('Ok'),
                ),
              ],
            );
          },
        );
        return Future.value(false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Conversor'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ListConverterScreen(items: dataList);
                  }),
                );
              },
              icon: const Icon(Icons.list),
            ),
            const ExitWidget(),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              TextField(
                controller: firstCont,
                style: textStyle,
                decoration: baseDecoration.copyWith(
                  errorText: (showError1) ? 'Dato invalido' : null,
                  prefixIcon: const Icon(Icons.attach_money),
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r',')),
                ],
                onChanged: (String value) {
                  showError1 = value.contains('.');
                  value1 = value;
                  setState(() {});
                },
              ),
              // const ChangeIcon(),
              ChangeIcon(onTap: () {}),
              TextField(
                controller: controller,
                style: textStyle,
                decoration: baseDecoration.copyWith(
                  errorText: (showError2) ? 'Dato invalido' : null,
                  hintText: null,
                  labelText: 'Resultado',
                  prefixIcon: const Text('Bs',
                      style: textStyle, textAlign: TextAlign.center),
                ),
                readOnly: true,
                keyboardType: TextInputType.number,
                onChanged: (String value) {
                  showError2 = value.contains('.');
                  setState(() {});
                },
              ),
              ElevatedButton(
                onPressed: () {
                  log('1er valor $value1');
                  log('2do valor ${controller.text}');

                  double amount1 = double.parse(value1.replaceAll(',', '.'));
                  double amount2 = valueUSD * amount1;
                  controller.text =
                      amount2.toStringAsFixed(1).replaceAll('.', ',');

                  dataList.add(
                    ConverterModel(
                      initialAmount: amount1,
                      convertAmount: amount2,
                      date: DateTime.now(),
                    ),
                  );
                },
                child: const Text('CONVERTIR'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}

class ChangeIcon extends StatelessWidget {
  const ChangeIcon({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    log('Build Change icon');
    return IconButton(
      onPressed: onTap,
      icon: const Icon(Icons.change_circle, size: 48),
    );
  }
}
