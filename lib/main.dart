import 'package:flutter/material.dart';
import 'package:prettify/Screens/base_screen.dart';
import 'package:intl/date_symbol_data_local.dart';


void main() {
  initializeDateFormatting().then((_) => runApp(Prettify()));
}


class Prettify extends StatefulWidget {
  @override
  _PrettifyState createState() => _PrettifyState();
}

class _PrettifyState extends State<Prettify> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Prettify',
        theme: ThemeData(

          appBarTheme: const AppBarTheme(brightness: Brightness.dark),
          primarySwatch: Colors.blue,
          primaryColor: const Color.fromARGB(255, 18, 28, 46),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: BaseScreen()
        );
  }
}
