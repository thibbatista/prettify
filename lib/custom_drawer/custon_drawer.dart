import 'package:flutter/material.dart';
import 'package:prettify/custom_drawer/drawer_tile.dart';

class CustonDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerTile(iconData: Icons.home, title: "Início"),
          DrawerTile(iconData: Icons.schedule, title: "Agenda"),
          DrawerTile(iconData: Icons.search, title: "Explorar"),
          DrawerTile(iconData: Icons.person, title: "Perfil"),

        ],
      ),
    );
  }
}
