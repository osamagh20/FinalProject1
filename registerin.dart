import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'bottombar.dart';
import 'homepage.dart';

class SigninPage extends StatefulWidget {
  SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  String inputstr = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 184, 215, 211),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 20, 108, 112),
          title: Text(
            "Sign in",
            style: TextStyle(fontSize: 33),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.only(top: 90),
          children: [
            Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          hintText: "User name",
                          hintStyle: TextStyle(fontSize: 28)),
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
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(fontSize: 28)),
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

// MaterialButton(
//                         onPressed: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => BottomBar()));
//                         },
//                         color: Color.fromARGB(255, 52, 134, 143),
//                         textColor: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(30),
//                         ),
//                         height: 100,
//                         minWidth: 200,
//                         child: Text(
//                           "Sign in",
//                           style: TextStyle(fontSize: 33),
//                         ),
//                       ),