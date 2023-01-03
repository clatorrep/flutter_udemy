import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final games = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Listview Tipo 1'),
        ),
      ),
      body: ListView(
        children: games
            .map(
              (game) => ListTile(
                title: Text(game),
                leading: const Icon(Icons.gamepad_rounded),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
              ),
            )
            .toList(),
      ),
    );
  }
}
