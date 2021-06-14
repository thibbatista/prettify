import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Container(
        padding: EdgeInsets.all(0.0),
        height: 300.0,
        color: Theme.of(context).primaryColor,
        child: ListView(

          scrollDirection: Axis.horizontal,
          children: [
            CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 50.0,
            ),
            SizedBox(width:25.0,),
            CircleAvatar(
              backgroundColor: Colors.redAccent,
              radius: 50.0,
            ),
            SizedBox(width:25.0,),
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 50.0,
            ), SizedBox(width:25.0,),
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 50.0,
            ), SizedBox(width:30.0,),
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 50.0,
            ), SizedBox(width:30.0,),
            CircleAvatar(
              backgroundColor: Colors.grey,
              radius: 50.0,
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        title: Text("Prettify"),
        centerTitle: true,
        elevation: 0,
        leading: Container());
  }
}
