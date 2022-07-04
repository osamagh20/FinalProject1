import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'disemployee.dart';
import 'disbranch.dart';
import 'employee.dart';
import 'loginpage.dart';
import 'profilpage.dart';

class BranchPage extends StatefulWidget {
  const BranchPage({Key? key}) : super(key: key);

  @override
  State<BranchPage> createState() => _BranchPageState();
}

String inputstr = "";

class _BranchPageState extends State<BranchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Text("Branches"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 73, 133, 128),
          actions: [
            IconButton(
                onPressed: () {
                  setState(() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ProfilPage()));
                  });
                },
                icon: Icon(
                  Icons.person,
                )),
            // Padding(
            //   padding: EdgeInsets.only(right: 7),
            //   child: Icon(Icons.person),
            // ),
            Padding(
                padding: EdgeInsets.only(top: 20, right: 10),
                child: Text("Profile")),
          ],
        ),
        drawer: Drawer(
            child: Column(
          children: [
            Container(
                height: 100,
                width: double.infinity,
                padding: EdgeInsets.only(top: 40),
                alignment: Alignment.center,
                color: Colors.cyan,
                child: Text(
                  "Services",
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'TitanOne',
                  ),
                )),
            ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilPage()));
                }),
            ListTile(
                leading: Icon(Icons.person_pin_sharp),
                title: Text("Employee"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EmployeePage()));
                }),
            ListTile(
                leading: Icon(Icons.home_work_outlined),
                title: Text("Branches"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BranchPage()));
                }),
            ListTile(
                leading: Icon(Icons.money), title: Text("Salaries (soon..)")),
            ListTile(
                leading: Icon(Icons.book_sharp),
                title: Text("Reports (soon..)")),
            ListTile(
                leading: Icon(Icons.logout),
                title: Text("Log out"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                }),

            // BuildTile("Employees", Icons.money, () {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => EmployeePage()));
            // })
          ],
        )),
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              width: 180,
              margin: EdgeInsets.all(10),
              height: 50,
              padding: EdgeInsets.all(10),
              alignment: Alignment.topCenter,
              child: TextField(
                decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: TextStyle(fontSize: 20)),
                onChanged: (String textinput) {
                  setState(() {
                    inputstr = textinput;
                  });
                },
              ),
            ),
            Column(
              children: dataBranch
                  .map((e) => Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 15),
                                blurRadius: 40,
                                color: Color.fromARGB(255, 52, 51, 51))
                          ]),
                      margin: EdgeInsets.all(10),
                      width: 340,
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage(e["image"].toString()),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              style: TextStyle(),
                              "Name is : " + e["name"].toString()),
                          Text("ID : " + e["id"].toString()),
                          Text("Manager is : " + e["manager"].toString()),
                          Text("Number of Employees is : " +
                              e["Numofemp"].toString()),
                          Text("Branch location  is : " +
                              e["location"].toString()),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DisBranch(data: e)));
                              },
                              child: Text("Enter"))
                        ],
                      )))
                  .toList(),
            ),
          ],
        ));
  }
}

List dataBranch = [
  {
    "name": "MCDONALD'S",
    "id": "2-191823",
    "manager": "Turki",
    "Numofemp": 18,
    "location": "Al-faisaliah",
    "image": "assets/images/mac1.jpeg" //assets/images/Mc.jpeg
  },
  {
    "name": "Buffalo",
    "id": "2-559314",
    "manager": "Faisal",
    "Numofemp": 23,
    "location": "Al-wurud",
    "image": "assets/images/baf.jpeg", // assets/images/Buff.jpeg
  },
  {
    "name": "Alwasama salon",
    "id": "2-985427",
    "manager": "Abdulaziz",
    "Numofemp": 5,
    "location": "Al-hamra",
    "image": "assets/images/bb.jpeg", //assets/images/barb.jpeg"
  },
  {
    "name": "Domino's",
    "id": "2-193745",
    "manager": "Fahad",
    "Numofemp": 31,
    "location": "Al-sulaymaniyah",
    "image":
        "assets/images/dd.jpeg", // assets/images/Scrter.jpeg ,assets/images/Domin.jpeg
  }
];
