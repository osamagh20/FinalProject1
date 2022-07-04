
import 'package:flutter/material.dart';
import 'package:gobusiness/disemployee.dart';
import 'package:gobusiness/homepage.dart';
import 'package:gobusiness/loginpage.dart';
import 'package:gobusiness/profilpage.dart';
import 'package:gobusiness/projects.dart';


class EmployeePage extends StatefulWidget {
  const EmployeePage({Key? key}) : super(key: key);

  ListTile BuildTile(String title, IconData icon, Function onTapLink) {
    return ListTile(
      leading: Icon(icon, size: 28),
      title: Text(
        title,
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          title: Text("Employees"),
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
                child: Text("profile")),
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
              children: dataEmp
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
                          // Image.network(
                          //   ,
                          //   width: 100,// assets/images/ceoimagee.png
                          //   height: 100,
                          //   fit: BoxFit.cover,
                          // ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                              style: TextStyle(),
                              "Name is : " + e["name"].toString()),
                          Text("ID : " + e["id"].toString()),
                          Text("Profession is : " + e["profession"].toString()),
                          Text("Phone Number is : " + e["phone"].toString()),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DisEmployee(data: e)));
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

List dataEmp = [
  {
    "name": "Bander",
    "id": 1122,
    "profession": "Programmer",
    "phone": "0542212558",
    "image": "assets/images/progr1.jpeg"
  },
  {
    "name": "Mohammed",
    "id": 1144,
    "profession": "Security",
    "phone": "0572295774",
    "image": "assets/images/secuman.jpeg"
  },
  {
    "name": "Saleem",
    "id": 1019,
    "profession": "Manager",
    "phone": "0548836559",
    "image": "assets/images/Manager.jpeg"
  },
  {
    "name": "Saad",
    "id": 1918,
    "profession": "IT",
    "phone": "0547783553",
    "image": "assets/images/ITman.jpeg"
  },
  {
    "name": "Hani",
    "id": 1217,
    "profession": "Assist Manager",
    "phone": "0583359552",
    "image": "assets/images/Scrter.jpeg"
  },
  {
    "name": "Kamel",
    "id": 1104,
    "profession": "cashier",
    "phone": "0582259114",
    "image": "assets/images/casher.jpeg"
  }
];

// ListView(
//         children: [
//           Column(
//             children: dataEmployee
//                 .map((e) => Container(
//                     color: Colors.green,
//                     margin: EdgeInsets.all(10),
//                     width: 300,
//                     child: Column(
//                       children: [
//                         Text("ID" + e["id"].toString()),
//                         Text("userId" + e["userId"].toString()),
//                         Text("Title" + e["title"].toString()),
//                         Text("Body" + e["body"].toString()),
//                         ElevatedButton(
//                             onPressed: () {
//                               Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           SecondPage(data: e)));
//                             },
//                             child: Text("Enter"))
//                       ],
//                     )))
//                 .toList(),
//           ),
//         ],
//       ),