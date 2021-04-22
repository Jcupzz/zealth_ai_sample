import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:zealth_ai_sample/Pages/Symptoms.dart';
import 'Pages/Home.dart';
import 'Pages/Medication.dart';
import 'Pages/Reports.dart';

class MyBottomNavigationBar extends StatefulWidget {
  @override
  _MyBottomNavigationBarState createState() => _MyBottomNavigationBarState();
}

class _MyBottomNavigationBarState extends State<MyBottomNavigationBar> {
  int _page = 1;
  final pageOption = [
    Home(),
    Symptoms(),
    Medication(),
    Reports(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        showUnselectedLabels: true,
        selectedItemColor: Colors.pinkAccent,
        currentIndex: _page,
        unselectedItemColor: Colors.black,
        iconSize: 20,
        showSelectedLabels: true,
        onTap: (number){
          setState(() {
            _page = number;
          });
        },
        items: [
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/home.svg"),label:'Home'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/thermo.svg"),label: 'Symptoms'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/medication.svg"),label: 'Medication'),
          BottomNavigationBarItem(icon: SvgPicture.asset("assets/icons/activity.svg"),label:'Reports' ),
        ],
      ),
      body: pageOption[_page],
    );

  }
}
