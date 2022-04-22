import 'package:flutter/material.dart';
import 'package:g4c/App/Utils/imagens.dart';
import 'package:g4c/App/Utils/imagens.dart';
import 'package:g4c/App/bars/AppBar.dart';
import 'package:g4c/App/colors/colors.dart';
import 'package:g4c/App/view/dashboard.dart';
import 'package:g4c/App/view/home.dart';
import 'package:g4c/App/view/profile.dart';

class bottomNavigatorBarScreen extends StatefulWidget {
  bottomNavigatorBarScreen({Key? key}) : super(key: key);

  @override
  _bottomNavigatorBarState createState() => _bottomNavigatorBarState();
}

class _bottomNavigatorBarState extends State<bottomNavigatorBarScreen> {
  int _selectedIndex = 1;

  final _widgetOptions = [
    Home(),
    Dashboard(),
    Profile(),
  ];

  Widget build(BuildContext context) {
    const double _iconSize = 41;
    const double _iconSizeSelected = 53;

    return BottomNavigationBar(
      backgroundColor: Color(0xFFaefb2a),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: IconButton(
              icon: _selectedIndex == 1
                  ? Images.selectedStories
                  : Images.selectedStories,
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              iconSize: _selectedIndex == 1 ? _iconSizeSelected : _iconSize,
            ),
            label: 'Tarefas'),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: _selectedIndex == 1
                  ? Images.selectedRanking
                  : Images.selectedRanking,
              onPressed: () {
                Navigator.pushNamed(context, '/dashboard');
              },
              iconSize: _selectedIndex == 1 ? _iconSizeSelected : _iconSize,
            ),
            label: 'Dashboard'),
        BottomNavigationBarItem(
            icon: IconButton(
              icon: _selectedIndex == 1
                  ? Images.selectedProfile
                  : Images.selectedProfile,
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
              iconSize: _selectedIndex == 1 ? _iconSizeSelected : _iconSize,
            ),
            label: 'Perfil'),
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
