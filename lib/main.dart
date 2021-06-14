import 'package:flutter/material.dart';
import 'package:prettify/Screens/home_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Prettify',
      theme: ThemeData(

        primarySwatch: Colors.blue,
        primaryColor: Color.fromARGB(255, 18, 28, 46)

      ),
      home: HomeScreen(
      ),
    );
  }
}
