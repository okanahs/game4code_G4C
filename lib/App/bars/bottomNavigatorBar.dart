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
  int _selectedIndex = 0;

  Widget build(BuildContext context) {
    const double _iconSize = 20;
    const double _iconSizeSelected = 23;

    return BottomNavigationBar(
      type: BottomNavigationBarType.shifting,
      backgroundColor: Colors.black,
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            icon: _selectedIndex == 0
                ? Images.selectedStories
                : Images.selectedStories,
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            iconSize: _selectedIndex == 0 ? _iconSizeSelected : _iconSize,
          ),
          label: 'Tarefas',
        ),
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
          label: 'Dashboard',
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon: _selectedIndex == 2
                ? Images.selectedProfile
                : Images.selectedProfile,
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            iconSize: _selectedIndex == 2 ? _iconSizeSelected : _iconSize,
          ),
          label: 'Perfil',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.blue,
      showUnselectedLabels: true,
      elevation: 0,
      onTap: _onTap,
    );
  }

  void _onTap(int index) {
    _selectedIndex = index;
    setState(() {});
  }
}
