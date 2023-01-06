import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              child: Text('TL'),
            ),
          ),
        ],
      ),
      body: Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundColor: Theme.of(context).primaryColorDark,
          backgroundImage: NetworkImage(
              'https://i.pinimg.com/originals/3d/11/7a/3d117a9cc580f6367046a4d79c9600a9.png'),
        ),
      ),
    );
  }
}
