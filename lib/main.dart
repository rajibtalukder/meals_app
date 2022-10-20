import 'package:flutter/material.dart';
import 'package:meals_app/screens/filters_screen.dart';
import 'package:meals_app/screens/tabs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Map<String, bool> filters = {
    'gluten': false,
    'lactos': false,
    'vegan': false,
    'vegetarian': false,
  };
  
  void _setFilters (Map<String, bool> filterData) {
    setState(() {
      filters = filterData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      //home: TabsScreens(),
      initialRoute: '/',
      routes: {
        '/': (context) => TabsScreens(),
        '/filterScreen': (context) => FiltersScreen(_setFilters as dynamic),
      },
    );
  }
}
