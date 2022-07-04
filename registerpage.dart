import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'bottombar.dart';
import 'home2.dart';
import 'homepage.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String inputstr = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 184, 215, 211),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 20, 108, 112),
          title: Text(
            "Sign up",
            style: TextStyle(fontSize: 33),
          ),
        ),
        body: ListView(
          children: [
            Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(hintText: "Fall name"),
                      onChanged: (String textinput) {
                        setState(() {
                          inputstr = textinput;
                        });
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "National ID"),
                      onChanged: (String textinput) {
                        setState(() {
                          inputstr = textinput;
                        });
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Password"),
                      onChanged: (String textinput) {
                        setState(() {
                          inputstr = textinput;
                        });
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "User name"),
                      onChanged: (String textinput) {
                        setState(() {
                          inputstr = textinput;
                        });
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: "Unified number"),
                      onChanged: (String textinput) {
                        setState(() {
                          inputstr = textinput;
                        });
                      },
                    ),
                    SizedBox(
                      height: 120,
                    ),
                    Center(
                        child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomBar()),
                            (route) => false);
                      },
                      child: Text(
                        "Sign in",
                        style: TextStyle(fontSize: 50),
                      ),
                    )),
                  ],
                ))
          ],
        ));
  }
}
