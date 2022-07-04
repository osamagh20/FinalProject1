import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gobusiness/projects.dart';

import 'employee.dart';
import 'loginpage.dart';
import 'profilpage.dart';

List dataTask = [
  {"id": 1243, "problem": "Renew iqama (rsheed)", "ِexpdate": "2022/07/12"},
  {"id": 1256, "problem": "Renew iqama (imtyaz)", "ِexpdate": "2022/07/23"},
  {
    "id": 1823,
    "problem": "Commercial registration renewal (2-193745)",
    "ِexpdate": "2022/08/05"
  },
  {
    "id": 1243,
    "problem": "Municipal license renewal (2-985427)",
    "ِexpdate": "2022/09/08"
  }
];

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);
  int selectedIndex = 0;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  List view = [EmployeePage(), HomePage(), BranchPage()];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Text("Home"),
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
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                }),
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
          ],
        )),
        body: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                "Tasks",
                style: TextStyle(fontSize: 45, fontFamily: 'TitanOne'),
              ),
              width: 300,
              height: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 40,
                        color: Color.fromARGB(255, 52, 51, 51))
                  ]),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              margin: EdgeInsets.all(10),
              child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 1 / 3,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                  ),
                  itemCount: dataTask.length,
                  itemBuilder: (context, i) {
                    return ListTile(
                      tileColor: Color.fromARGB(255, 250, 250, 250),
                      title: Text(
                          "ID is : ${dataTask[i]["id"]} ,\n Name of Task : ${dataTask[i]["problem"]} "),
                      subtitle: Text(
                          "Last day to complete is : ${dataTask[i]["ِexpdate"]}"),
                    );
                  }),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 100,
              alignment: Alignment.center,
              child: Text(
                "Services",
                style: TextStyle(fontSize: 45, fontFamily: 'TitanOne'),
              ),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 15),
                        blurRadius: 40,
                        color: Color.fromARGB(255, 52, 51, 51))
                  ]),
            ),
            Container(
                height: 200,
                width: 200,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(10),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 2,
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 20),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.money,
                            size: 45,
                          ),
                          Text(
                            "Salaries",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          Text("soon.."),
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.book_sharp,
                            size: 45,
                          ),
                          Text(
                            "Reports",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          Text("soon..")
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.meeting_room_outlined,
                            size: 45,
                          ),
                          Text(
                            "Meeting",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          Text("soon..")
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(15),
                        ),
                      ),
                      child: Column(
                        children: [
                          Icon(
                            Icons.holiday_village_rounded,
                            size: 45,
                          ),
                          Text(
                            "Vacations",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          Text("soon.."),
                        ],
                      ),
                    ),
                  ],
                ))
          ],
        ));
  }
}




// 
//  Container(
//                   height: 100,
//                   child: GridView.builder(
//                       scrollDirection: Axis.vertical,
//                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         crossAxisCount: 2,
//                         crossAxisSpacing: 10,
//                         mainAxisSpacing: 10,
//                       ),
//                       itemCount: dataTask.length,
//                       itemBuilder: (context, i) {
//                         return ListTile(
//                           tileColor: Color.fromARGB(255, 250, 250, 250),
//                           title: Text(
//                               "ID is : ${dataTask[i]["id"]} , Name of Task : ${dataTask[i]["problem"]} "),
//                           subtitle: Text(
//                               "Last day to complete is : ${dataTask[i]["ِexpdate"]}"),
//                         );
//                       }),
//                 ),