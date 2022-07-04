import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'employee.dart';
import 'home2.dart';
import 'homepage.dart';
import 'profilpage.dart';
import 'projects.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  List view = [HomePage(), EmployeePage(), BranchPage()];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: view[selected],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 161, 234, 199),
        iconSize: 33,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: 'Employees',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_work_outlined),
            label: 'Branches',
          ),
        ],
        currentIndex: selected,
        onTap: (valueselected) {
          setState(() {
            selected = valueselected;
          });
        },
      ),
    );
  }
}
