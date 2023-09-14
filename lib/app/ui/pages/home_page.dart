import 'package:flutter/material.dart';

import '../utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Главная',
      style: optionStyle,
    ),
    Text(
      'Покупки',
      style: optionStyle,
    ),
    Text(
      'Платежи',
      style: optionStyle,
    ),
    Text(
      'Чат',
      style: optionStyle,
    ),
    Text(
      'Бонусы',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColorScaffold,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: 'Покупки',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_returned),
            label: 'Платежи',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sms),
            label: 'Чат',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.redeem),
            label: 'Бонусы',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: backgroundColorScaffold,
        unselectedItemColor: bottomNavigationBarUnselectedColor,
        onTap: _onItemTapped,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
    );
  }
}
