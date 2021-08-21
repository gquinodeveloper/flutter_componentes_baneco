import 'package:baneco_componentes/pages/card_paged.dart';
import 'package:baneco_componentes/pages/home_page.dart';
import 'package:baneco_componentes/pages/profile_page.dart';
import 'package:flutter/material.dart';

class AppRoot extends StatefulWidget {
  @override
  _AppRootState createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  int _selectedIndex = 0;
  void _onSelectedIndex(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  List<Widget> _pages = [
    HomePage(),
    CardPage(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_outlined),
            label: "Card",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        onTap: _onSelectedIndex,
        /* onTap: (index) {
          _onSelectedIndex(index);
        }, */
      ),
    );
  }
}
