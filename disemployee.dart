import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DisEmployee extends StatefulWidget {
  DisEmployee({Key? key, required this.data}) : super(key: key);
  Map data = {};

  @override
  State<DisEmployee> createState() => _DisEmployeeState();
}

Color iconColors3 = Color.fromARGB(255, 255, 255, 0);
Color iconColors4 = Color.fromARGB(255, 160, 10, 35);

class _DisEmployeeState extends State<DisEmployee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 9, 168, 105),
          title: Text("Data Employee"),
        ),
        body: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(15)),
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
                Text("Name is : " + widget.data["name"].toString()),
                Text("ID : " + widget.data["id"].toString()),
                Text("Profession is : " + widget.data["profession"].toString()),
                Text("Phone Number is : " + widget.data["phone"].toString()),
                SizedBox(
                  height: 20,
                )
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
                                      title: Text("Salary"),
                                      content: Text("7600 Rial"),
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
                                      title: Text("Branch"),
                                      content: Text("work in Dominos"),
                                    );
                                  });
                            },
                            icon: Icon(
                              Icons.home_outlined,
                              color: Color.fromARGB(255, 124, 124, 124),
                              size: 50,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text("    Branch")
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
                              Icons.check_circle,
                              color: iconColors4,
                              size: 50,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text("    Attend")
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
