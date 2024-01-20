import 'package:flutter/material.dart';
import 'package:mod1/models/converter_model.dart';
import 'package:mod1/screens/column_screen.dart';
import 'package:mod1/screens/converter_screen.dart';
import 'package:mod1/screens/counter_screen.dart';
import 'package:mod1/screens/food/food_screen.dart';
import 'package:mod1/screens/images_screen.dart';
import 'package:mod1/screens/music/music_screen.dart';
import 'package:mod1/screens/profile/profile_screen.dart';
import 'package:mod1/screens/row_screen.dart';
import 'package:mod1/screens/stack_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Titulo de la app',
      routes: {
        '/menu': (BuildContext context) => const MenuScreen(),
        '/foods': (BuildContext context) => const FoodScreen(),
        '/music': (BuildContext context) => const MusicScreen(),
        '/profile': (BuildContext context) => const ProfileScreen(),
      },
      initialRoute: '/menu',
      // home: const ConverterScreen(amount: 100),
    );
  }
}

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: const Text('Food'),
            onTap: () {
              Navigator.pushNamed(context, '/foods', arguments: 'HOLA');
            },
          ),
          ListTile(
            title: const Text('Music'),
            onTap: () {
              Navigator.pushNamed(context, '/music');
            },
          ),
          ListTile(
            title: const Text('Profile'),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/profile',
                arguments: ConverterModel(
                  initialAmount: 50,
                  convertAmount: 50,
                  date: DateTime.now(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
