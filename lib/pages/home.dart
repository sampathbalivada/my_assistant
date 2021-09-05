import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:my_assistant/widgets/appbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void changeIndex(int newIndex) {
    setState(() {
      _selectedIndex = newIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, 'Budget Tracker'),
      body: Container(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.transparent, Colors.black87],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildBottomNavbarItem(Ionicons.stats_chart_outline,
                _selectedIndex == 0, changeIndex, 0),
            buildBottomNavbarItem(
                Ionicons.repeat_sharp, _selectedIndex == 1, changeIndex, 1),
            buildBottomNavbarItem(
                Ionicons.tv_outline, _selectedIndex == 2, changeIndex, 2),
            buildBottomNavbarItem(
                Ionicons.settings_outline, _selectedIndex == 3, changeIndex, 3),
          ],
        ),
      ),
    );
  }

  void sample() {
    return;
  }

  Widget buildBottomNavbarItem(
    IconData icon,
    bool isSelected,
    Function onPressed,
    int actualIndex,
  ) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      decoration: isSelected
          ? BoxDecoration(
              color: Colors.black,
              border: Border.all(
                color: Color(0xFF664EAE),
                style: BorderStyle.solid,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(16),
            )
          : BoxDecoration(),
      child: IconButton(
        color: isSelected ? Color(0xFFC4A8FF) : Colors.grey,
        onPressed: () {
          changeIndex(actualIndex);
        },
        icon: Icon(icon),
      ),
    );
  }
}
