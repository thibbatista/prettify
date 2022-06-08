import 'package:flutter/material.dart';
import 'package:prettify/Screens/home.dart';
import 'package:prettify/agenda/agenda_calendario.dart';
import 'package:prettify/agenda/horarios.dart';

class BaseScreen extends StatefulWidget {
  @override
  _BaseScreenState createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int _selectedIndex = 0;
  Color backGroundColor =  const Color.fromARGB(255, 18, 28, 46);

  static String title = "Prettify";
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
   final List<Widget> _widgetOptions = <Widget>[
    Home(),
     AgendaCalendario(),
    Teste(),
    Container(
      color: Colors.yellow,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 0) {
        title = "Prettify";
      }
      if (_selectedIndex == 1) {
        title = "Agenda";
      }
      if (_selectedIndex == 2) {
        title = "Explorar";
      }
      if (_selectedIndex == 3) {
        title = "Local";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title),
        elevation: 0,
        centerTitle: true,
        backgroundColor: backGroundColor ,

      ),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Início',
              backgroundColor: Color.fromARGB(255, 18, 28, 46)),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today),
              label: 'Agenda',
              backgroundColor: Color.fromARGB(255, 18, 28, 46)),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Explorar',
              backgroundColor: Color.fromARGB(255, 18, 28, 46)),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_pin),
              label: 'Meu local',
              backgroundColor: Color.fromARGB(255, 18, 28, 46)),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.lightBlueAccent[100],
        onTap: _onItemTapped,

      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      elevation: 0,

      leading: Container(),
    );
  }
}
