import 'package:flutter/material.dart';


class NavigatorBar extends StatefulWidget {
  // int selectedIndex = 0;
  // NavigatorBar(this.selectedIndex);

  @override
  _NavigatorBarState createState() => _NavigatorBarState();
}

class _NavigatorBarState extends State<NavigatorBar> {


  static  List<Widget> _widgetOptions = <Widget>[

    Scaffold(
      appBar: AppBar(title: Text("Prettify"),
        elevation: 0,
      ),
      body: Container(color: Colors.yellow,),

      bottomNavigationBar: NavigatorBar(),

    ),

    Scaffold(
      appBar: AppBar(title: Text("Agenda"),
        elevation: 0,
      ),
      body: Container(color: Colors.red,),

      bottomNavigationBar: NavigatorBar(),

    ),
    Scaffold(
      appBar: AppBar(title: Text("Explorar"),
        elevation: 0,
      ),
      body: Container(color: Colors.blue,),

      bottomNavigationBar: NavigatorBar(),

    ),
    Scaffold(
      appBar: AppBar(title: Text("Nas Redondezas"),
        elevation: 0,
      ),
      body: Container(color: Colors.green,),

      bottomNavigationBar: NavigatorBar(),

    ),

   ];


  int _selectedIndex = 0;


  void _onItemTapped(int index) {
    _selectedIndex = index;

  // context.read<PageManager>().setPage(_selectedIndex);
     setState(() {
       _selectedIndex = index;


     //context.read<PageManager>().setPage(_selectedIndex);

    });
  }

  @override
  Widget build(BuildContext context) {


    return BottomNavigationBar(

        items:  const <BottomNavigationBarItem>[
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
              backgroundColor: Color.fromARGB(255, 18, 28, 46),

          ),

        ],

      currentIndex: _selectedIndex,
      selectedItemColor: Colors.lightBlueAccent[100],
    onTap: _onItemTapped,
    );
  }
}
