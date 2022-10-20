import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';

class FiltersScreen extends StatefulWidget {
  static const routeName = '/filterScreen';
  final Function()? saveFilters;
  const FiltersScreen(this.saveFilters);

  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactosFree = false;

  Widget _buildSwitchListTile(String title, String description,
      bool currentValue, Function(bool) updateValue) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(description),
        value: currentValue,
        onChanged: updateValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      appBar: AppBar(
          title: const Text('Your Filters'),
          actions: [IconButton(onPressed: widget.saveFilters, icon: Icon(Icons.save))]),
      body: Column(children: [
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            'Adjust your meal section',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        Expanded(
            child: ListView(
          children: [
            _buildSwitchListTile(
                'GlutenFree', 'Only glutenfree items here', _glutenFree,
                (newval) {
              setState(() {
                _glutenFree = newval;
              });
            }),
            _buildSwitchListTile(
                'Vegetarian', 'Only vegetarian items here', _vegetarian,
                (newval) {
              setState(() {
                _vegetarian = newval;
              });
            }),
            _buildSwitchListTile('Vegan', 'Only vegan items here', _vegan,
                (newval) {
              setState(() {
                _vegan = newval;
              });
            }),
            _buildSwitchListTile(
                'LactosFree', 'Only lactosfree items here', _lactosFree,
                (newval) {
              setState(() {
                _lactosFree = newval;
              });
            }),
          ],
        ))
      ]),
    );
  }
}
