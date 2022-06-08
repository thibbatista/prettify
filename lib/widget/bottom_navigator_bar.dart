import 'package:flutter/material.dart';
import 'package:prettify/widget/carousel_icon.dart';

class BottomNavigator extends StatefulWidget {
  @override
  _BottomNavigatorState createState() => _BottomNavigatorState();
}

class _BottomNavigatorState extends State<BottomNavigator> {

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     // appBar: buildAppBar(),

      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(Icons.home),
            label: 'Início',
            backgroundColor: Color.fromARGB(255, 18, 28, 46)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Agenda',
            backgroundColor: Color.fromARGB(255, 18, 28, 46)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Explorar',
            backgroundColor: Color.fromARGB(255, 18, 28, 46)
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_pin),
            label: 'Meu local',
            backgroundColor: Color.fromARGB(255, 18, 28, 46)
          ),
        ],

        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlueAccent[100],
        onTap: _onItemTapped,

      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(

      title: const Text("Prettify"),
      centerTitle: true,
      elevation: 0,
      leading: Container(
      ),
    );
  }
}
