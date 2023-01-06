import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album_rounded,
              color: Theme.of(context).primaryColor,
            ),
            title: const Text('Soy un título'),
            subtitle: const Text(
                'Ad velit elit esse esse excepteur sint amet incididunt elit laborum mollit pariatur ea. Commodo cupidatat officia velit magna. Reprehenderit eu fugiat aliquip mollit laboris ea irure magna dolor adipisicing velit aliqua amet. Commodo consectetur irure eiusmod ullamco aliqua esse non do pariatur quis sit fugiat. Nulla excepteur amet labore sit voluptate nisi in minim dolore dolore eiusmod mollit.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
