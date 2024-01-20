import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExitWidget extends StatelessWidget {
  const ExitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
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
      },
      icon: const Icon(Icons.exit_to_app),
    );
  }
}
