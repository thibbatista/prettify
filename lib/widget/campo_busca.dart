import 'package:flutter/material.dart';

class CampoBusca extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,

      margin: EdgeInsets.symmetric(horizontal: 20.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 54,
      decoration: BoxDecoration(
          color: Colors.white70.withAlpha(255),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                offset: Offset(0,10),
                blurRadius: 50,
                color: Theme.of(context).primaryColor.withOpacity(0.5)
            )
          ]
      ),
      child: Row(
        children: [
          Expanded(
              child: TextField(
                onChanged: (value){},
                decoration: InputDecoration(
                  hintText: "O que você procura?",
                  hintStyle: TextStyle(
                    color: Theme.of(context).primaryColor.withOpacity(0.5)
                  ),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none

                ),


              )
          ),
         Icon(Icons.search)
        ],
      ),
    );

  }
}
