// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:crm_project/bottom_nav.dart';
import 'package:crm_project/utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sign_In_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => signinscreen();
}

class signinscreen extends State<Sign_In_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 0,
                      fit: FlexFit.loose,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Sign In",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 30),
                          ),
                          Text(
                            "Welcome, Please login to continue.",
                            style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.normal,
                                fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Flexible(
                      flex: 0,
                      child: Column(
                        children: [
                          Center(child: Image.asset("assets/signin.png")),
                          SizedBox(height: 10),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  )),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter Email"),
                              )),
                          SizedBox(height: 10),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  )),
                              child: TextFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Enter Password"),
                              )),
                          SizedBox(height: 10),
                          Container(
                              padding: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.transparent),
                                  gradient: LinearGradient(
                                    begin: Alignment.topRight,
                                    end: Alignment.bottomLeft,
                                    colors: [
                                      Color(0xFF714DA9),
                                      Color(0xFF4C5BDA),
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  )),
                              child: Text(
                                "Sign In",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              )),
                        ],
                      ),
                    ),
                    Flexible(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.transparent),
                                gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  end: Alignment.bottomLeft,
                                  colors: [
                                    Color(0xFF714DA9),
                                    Color(0xFF4C5BDA),
                                  ],
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                )),
                            child: Center(
                              child: Padding(
                                  padding: EdgeInsets.all(15),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image(
                                        image:
                                            AssetImage('assets/ic_google.png'),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text(
                                            "Continue with Google",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ))
                                    ],
                                  )),
                            )),
                        Row(
                          children: [
                            Flexible(
                              child: Divider(
                                thickness: 2,
                                color: Color(0xFFE7EAEF),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.all(10),
                              child: Text("OR"),
                            ),
                            Flexible(
                              child: Divider(
                                thickness: 2,
                                color: Color(0xFFE7EAEF),
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) {
                                return BottomNavBar();
                              },
                            ));
                            // Navigator.of(context).push(MaterialPageRoute(
                            //   builder: (context) {
                            //     return BottomNavBar();
                            //   },
                            // ));
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black26),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(5),
                                  )),
                              child: Center(
                                child: Padding(
                                    padding: EdgeInsets.all(15),
                                    child: Text(
                                      "Continue without Sign In",
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    )),
                              )),
                        )
                      ],
                    ))
                  ],
                ))));
  }
}
