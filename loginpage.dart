import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'employee.dart';
import 'homepage.dart';
import 'registerin.dart';
import 'registerpage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 249, 249, 249),
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
                margin: EdgeInsets.only(top: 50),
                width: 200,
                height: 200,
                alignment: Alignment.center,
                child: Image.asset("assets/images/gobis.png")),
            // maxRadius: MediaQuery.of(context).size.width,
            // minRadius: MediaQuery.of(context).size.width,
            // child: ClipRRect(
            //   borderRadius: BorderRadius.circular(
            //       MediaQuery.of(context).size.width / 4),
            //   child: Image.asset("assets/images/gobis.png"),
            // )))
            // Center(

            Container(
                margin: EdgeInsets.all(30),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Welcome !',
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'TitanOne')),
                    ),
                    SizedBox(
                        width: 200,
                        height: 20,
                        child: Divider(
                          color: Color.fromARGB(255, 124, 175, 160),
                          thickness: 8.8,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SigninPage()));
                        },
                        color: Color.fromARGB(255, 52, 134, 143),
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 100,
                        minWidth: 300,
                        child: Text("Sign in",
                            style: TextStyle(
                              fontSize: 35,
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "If you don't have account press here !",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegisterPage()));
                        },
                        color: Color.fromARGB(255, 52, 134, 143),
                        textColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        height: 100,
                        minWidth: 300,
                        child: Text("Sign up", style: TextStyle(fontSize: 35)),
                      ),
                    )
                  ],
                )),
          ]),
        ));
  }
}
