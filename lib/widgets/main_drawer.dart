import 'package:flutter/material.dart';
import 'package:meals_app/screens/filters_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});

  Widget buildListTile(String title, IconData icon, Function() tapHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoCondensed'),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Drawer(
      child: Column(
        children: [
          Container(
            height: screenSize.height / 8,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            color: Theme.of(context).primaryColor,
            alignment: Alignment.centerLeft,
            child: const Text(
              'Cooking Up...!',
              style: TextStyle(
                  //fontFamily: 'RobotoCondensed',
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.amberAccent),
            ),
          ),
          SizedBox(height: screenSize.height / 20),
          buildListTile('Meals', Icons.restaurant, () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) =>  TabsScreens(),
              ),
            );
          }),
          buildListTile('Filters', Icons.settings, () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => FiltersScreen(()=>null),
              ),
            );
          }),
        ],
      ),
    );
  }
}
