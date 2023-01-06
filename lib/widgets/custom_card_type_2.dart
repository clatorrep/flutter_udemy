import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imgUrl;
  final String? name;

  const CustomCardType2({
    super.key,
    required this.imgUrl,
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      surfaceTintColor: Colors.white,
      shadowColor: Theme.of(context).primaryColor.withOpacity(.6),
      elevation: 20,
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imgUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 320,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name!),
            ),
        ],
      ),
    );
  }
}
