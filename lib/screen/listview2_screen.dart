import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final games = const ['Megaman', 'Metal Gear', 'Super Smash', 'Final Fantasy'];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Listview Tipo 2'),
        ),
      ),

      // ListView.builder() doesn't have separatorBuilder
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(games[index]),
          leading: const Icon(Icons.gamepad_rounded),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
        ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: games.length,
      ),
    );
  }
}
