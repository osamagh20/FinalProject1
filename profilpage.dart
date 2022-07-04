import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 80, 140, 148),
        body: SafeArea(
            child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 28),
                width: 200,
                height: 200,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 100,
                      backgroundImage:
                          AssetImage("assets/images/ceoimagee.png"),
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Text("osama alghamdi",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TitanOne')),
            SizedBox(
              height: 20,
            ),
            Text("CEO",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'TitanOne')),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Row(
                children: [
                  Icon(Icons.phone, color: Colors.cyan),
                  SizedBox(
                    width: 30,
                  ),
                  Text("0540060772")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Row(
                children: [
                  Icon(Icons.mail, color: Colors.cyan),
                  SizedBox(
                    width: 30,
                  ),
                  Text("osamahghamdi11@gmail.com")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Row(
                children: [
                  Icon(Icons.insert_drive_file_rounded, color: Colors.cyan),
                  SizedBox(
                    width: 30,
                  ),
                  Text("7001827385")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Row(
                children: [
                  Icon(Icons.perm_contact_calendar, color: Colors.cyan),
                  SizedBox(
                    width: 30,
                  ),
                  Text("1111")
                ],
              ),
            ),
            Center(
                child: MaterialButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Color.fromARGB(255, 4, 93, 103),
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    height: 70,
                    minWidth: 110,
                    child: Text("Back",
                        style: TextStyle(
                          fontSize: 28,
                        )))),
          ],
        )));
  }
}

