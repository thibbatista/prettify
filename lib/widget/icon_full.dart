import 'package:flutter/material.dart';

class IconFul extends StatefulWidget {
  final String image;
  final String text;

  const IconFul(this.image, this.text);

  @override

  _IconFulState createState() => _IconFulState(image, text);
}

class _IconFulState extends State<IconFul> {

  bool _isPressed = false;


  final String image;
  final String text;

  _IconFulState(this.image, this.text);

  @override
  Widget build(BuildContext context) {


    return Stack(
      alignment: Alignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.blueGrey.shade900,
          radius: 45.0,
          child: Align(
            child:  IconButton(

                iconSize: 60.0,
                icon: Image(image: AssetImage(image), color: _isPressed ? Colors.red : Colors.white70),

              onPressed: () {

                setState(() {


                  _isPressed  = !_isPressed;


                });

              },
               ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(00.0),
          alignment: Alignment.bottomCenter,
          child:Text(
            text,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
        )
      ],
    );
  }

}
