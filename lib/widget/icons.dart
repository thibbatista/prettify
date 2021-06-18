import 'package:flutter/material.dart';

class IconsBuild extends StatelessWidget {

  late final String image;
  late final String text;

  IconsBuild(this.image, this.text);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [

        CircleAvatar(
          backgroundColor: Colors.blueGrey.shade900,
          radius: 45.0,

          child: Align(
            alignment: Alignment.center,

            child: IconButton(
              iconSize: 60.0,


              icon:Image(
                image:  AssetImage(image),color: Colors.white,

              ),
              onPressed: (){},


              //icon:icons.manage_accounts,
              //color: Colors.white70,
              // size: 70.0,

            ),
          ),


        ),

        Container(
          padding: EdgeInsets.all(00.0),
          alignment: Alignment.bottomCenter,
          child: Text(
            text, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold  ),textAlign: TextAlign.center,),
        )


      ],

    );
  }
}
