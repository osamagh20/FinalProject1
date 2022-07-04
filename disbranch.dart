import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DisBranch extends StatefulWidget {
  DisBranch({Key? key, required this.data}) : super(key: key);
  Map data = {};

  @override
  State<DisBranch> createState() => _DisBranchState();
}

Color iconColors2 = Color.fromARGB(255, 255, 255, 0);
Color iconColors3 = Color.fromARGB(255, 6, 60, 77);
Color iconColors4 = Color.fromARGB(255, 160, 10, 35);

class _DisBranchState extends State<DisBranch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 9, 168, 105),
          title: Text("Data Branch"),
        ),
        body: ListView(
          children: [
            Container(
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
              margin: EdgeInsets.all(45),
              width: 300,
              padding: EdgeInsets.all(20),
              child: Column(children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(widget.data["image"].toString()),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                    style: TextStyle(),
                    "Name is : " + widget.data["name"].toString()),
                Text("ID : " + widget.data["id"].toString()),
                Text("Manager is : " + widget.data["manager"].toString()),
                Text("Number of Employees is : " +
                    widget.data["Numofemp"].toString()),
                Text("Branch location is : " +
                    widget.data["location"].toString()),
              ]),
            ),
            Container(
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 103, 187, 209),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(0, 15),
                          blurRadius: 40,
                          color: Color.fromARGB(255, 52, 51, 51))
                    ]),
                margin: EdgeInsets.all(10),
                alignment: Alignment.center,
                padding: EdgeInsets.only(top: 10),
                height: 100,
                child: Row(
                  children: [
                    SizedBox(
                      width: 33,
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Total salaries "),
                                      content: Text("45600 Rial"),
                                    );
                                  });
                            },
                            icon: Icon(
                              Icons.money,
                              color: Color.fromARGB(255, 124, 124, 124),
                              size: 50,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text("    Salary")
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return AlertDialog(
                                      title: Text("Branch Address "),
                                      content: Text(
                                          "Al Kharj,Sulaymaniyah,16278,6791,King Abdulaziz Rd"),
                                    );
                                  });
                            },
                            icon: Icon(
                              Icons.location_on_sharp,
                              color: Color.fromARGB(255, 124, 124, 124),
                              size: 50,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text("    Address")
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (iconColors3 ==
                                    Color.fromARGB(255, 255, 255, 0)) {
                                  iconColors3 = Colors.white;
                                } else {
                                  iconColors3 =
                                      Color.fromARGB(255, 255, 255, 0);
                                  ;
                                }
                              });
                            },
                            icon: Icon(
                              Icons.star,
                              color: iconColors3,
                              size: 50,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text("    Good"),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {
                              setState(() {
                                if (iconColors4 ==
                                    Color.fromARGB(255, 160, 10, 35)) {
                                  iconColors4 = Colors.white;
                                } else {
                                  iconColors4 =
                                      Color.fromARGB(255, 160, 10, 35);
                                }
                              });
                            },
                            icon: Icon(
                              Icons.book,
                              color: iconColors4,
                              size: 50,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text("    Report")
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: 30,
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
            SizedBox(
              height: 60,
            ),
          ],
        ));
  }
}
