import 'package:flutter/material.dart';

class IconsBuild extends StatelessWidget {


   final String image;
  final String text;


  const IconsBuild(this.image, this.text);

  @override
  Widget build(BuildContext context) {
    return Stack(

      alignment: Alignment.center,
      children: [

        CircleAvatar(

          backgroundColor: Colors.blueGrey.shade900,

          radius: 45.0,

          child: Align(
            child: IconButton(

                iconSize: 60.0,

                icon: Image(
                    image: AssetImage(image), color: Colors.white70

                ),
                onPressed: () {

                }

            ),
          ),

        ),

        Container(
          padding: const EdgeInsets.all(00.0),
          alignment: Alignment.bottomCenter,
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,),
        )

      ],

    );
  }

}
