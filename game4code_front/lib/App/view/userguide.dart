import 'dart:ffi';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:game4code_front/App/view/dashboard.dart';
import 'package:game4code_front/App/view/home.dart';
import 'package:simple_speed_dial/simple_speed_dial.dart';

final List<String> imgList = [
  'assets/imagens/photo1.jpg',
];

final themeMode = ValueNotifier(2);

class UserGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SliderCustom(),
    );
  }
}

class SliderCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.navigate_next,
              size: 38,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(), //mudar mais pra frente
                ),
              );
            },
            backgroundColor: Colors.green),
        body: Center(
          child: Builder(
            builder: (context) {
              return CarouselSlider(
                options: CarouselOptions(
                  height: 300,
                  viewportFraction: 1.0,
                  enlargeCenterPage: false,
                  // autoPlay: false,
                ),
                items: imgList
                    .map((item) => Container(
                          child: Center(
                              child: Image.asset(
                            item,
                            fit: BoxFit.cover,
                            height: 300,
                          )),
                        ))
                    .toList(),
              );
            },
          ),
        ));
  }
}
