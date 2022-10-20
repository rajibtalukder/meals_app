import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../screens/categories_screen.dart';
import '../screens/favourite_screen.dart';

class TabsScreens extends StatefulWidget {
  @override
  State<TabsScreens> createState() => _TabsScreensState();
}

class _TabsScreensState extends State<TabsScreens> {
  final List<Map<String, dynamic>> _pages = [
    {
      'page': const CategoriesScreen(),
      'title': 'Category',
    },
    {'page': const FavouriteScreen(), 'title': 'Your favourite'}
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Theme.of(context).canvasColor,
          currentIndex: _selectedPageIndex,
          onTap: _selectPage,
          backgroundColor: Theme.of(context).primaryColor,
          //type:BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Category'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favourite'),
          ]),
    );
  }
}
