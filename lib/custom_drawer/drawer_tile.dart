import 'package:flutter/material.dart';

class DrawerTile extends StatelessWidget {

  final IconData iconData;
  final String title;

  DrawerTile({required this.iconData, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData ,
          size: 32,
          color: Colors.blue,

        ),
        Text(
          title,
          style:  TextStyle(
              fontSize: 16,
              color: Colors.blue,
          ) ,
        )
      ],
    );
  }
}
