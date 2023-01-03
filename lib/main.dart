import 'package:flutter/material.dart';

import 'package:fl_comp/screen/screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home': (context) => const HomeScreen(),
        'listview1': (context) => const Listview1Screen(),
        'listview2': (context) => const Listview2Screen(),
      },
    );
  }
}
