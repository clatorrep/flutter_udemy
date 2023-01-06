import 'package:fl_comp/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        children: const [
          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(
              imgUrl:
                  'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
          SizedBox(height: 20),
          CustomCardType2(
              imgUrl:
                  'https://petapixel.com/assets/uploads/2022/08/fdfs20-800x533.jpg'),
          SizedBox(height: 20),
          CustomCardType2(
              imgUrl:
                  'https://petapixel.com/assets/uploads/2022/08/fdfs19-800x533.jpg'),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
