import 'package:flutter/material.dart';
import 'package:game4code/App/Utils/imagens.dart';
import 'package:game4code/App/bars/AppBar.dart';
import 'package:game4code/App/colors/colors.dart';
import 'package:game4code/App/drawer/drawer.dart';
import 'package:game4code/App/view/dashboard.dart';
import 'package:game4code/App/view/home.dart';
import 'package:game4code/App/view/profile.dart';

class bottomNavigatorBarScreen extends StatefulWidget {
  @override
  _bottomNavigatorBarState createState() => _bottomNavigatorBarState();
}

class _bottomNavigatorBarState extends State<bottomNavigatorBarScreen> {
  int _currentIndex = 0;
  final List<Widget> telas = [
    Home(),
    Profile(),
    Dashboard(),
  ];

  Widget currentScreen = Home();

  Widget build(BuildContext context) {
    const double _iconSize = 41;
    const double _iconSizeSelected = 53;
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      backgroundColor: Color(0xFFaefb2a),
      iconSize: _iconSize,
      onTap: (int index) {
        setState(() {
          _currentIndex = index;
        });
      },
      items: [
        BottomNavigationBarItem(
          icon: IconButton(
            icon: _currentIndex == 0
                ? Images.selectedStories
                : Images.selectedStories,
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            iconSize: _currentIndex == 0 ? _iconSizeSelected : _iconSize,
          ),
          title: const Padding(padding: EdgeInsets.all(0)),
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon:
                _currentIndex == 1 ? Images.tabRanking : Images.selectedRanking,
            onPressed: () {
              Navigator.pushNamed(context, '/dashboard');
            },
            iconSize: _currentIndex == 1 ? _iconSizeSelected : _iconSize,
          ),
          title: const Padding(padding: EdgeInsets.all(0)),
        ),
        BottomNavigationBarItem(
          icon: IconButton(
            icon:
                _currentIndex == 1 ? Images.tabProfile : Images.selectedProfile,
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            iconSize: _currentIndex == 1 ? _iconSizeSelected : _iconSize,
          ),
          title: const Padding(padding: EdgeInsets.all(0)),
        ),
      ],
    );
  }
}
