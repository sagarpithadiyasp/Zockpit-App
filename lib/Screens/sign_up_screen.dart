// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';
import 'package:crm_project/Screens/app_constant.dart';
import 'package:crm_project/bottom_nav.dart';
import 'package:crm_project/utility.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class Sign_up_Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => signupscreen();
}

class signupscreen extends State<Sign_up_Screen> {
  TextEditingController Cont_first_name = TextEditingController();
  TextEditingController Cont_last_name = TextEditingController();
  TextEditingController Cont_country_number = TextEditingController();
  TextEditingController Cont_email = TextEditingController();
  TextEditingController Cont_password = TextEditingController();
  TextEditingController Cont_confirm_password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: SingleChildScrollView(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Padding(
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
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  Text(
                                    "Welcome, Please sign up to continue.",
                                    style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black26),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          )),
                                      child: TextFormField(
                                        controller: Cont_first_name,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "First Name"),
                                      )),
                                  SizedBox(height: 10),
                                  Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black26),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          )),
                                      child: TextFormField(
                                        controller: Cont_last_name,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Last Name"),
                                      )),
                                  SizedBox(height: 10),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: Colors.black26),
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(5),
                                        )),
                                    child: InternationalPhoneNumberInput(
                                      textFieldController: Cont_country_number,
                                      onInputChanged: (PhoneNumber number) {
                                        print(number.phoneNumber);
                                      },
                                      inputDecoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Enter Phone Number"),
                                      selectorConfig: SelectorConfig(
                                        selectorType:
                                            PhoneInputSelectorType.BOTTOM_SHEET,
                                      ),
                                      autoValidateMode:
                                          AutovalidateMode.disabled,
                                      textAlignVertical: TextAlignVertical.top,
                                      selectorTextStyle:
                                          TextStyle(color: Colors.black),
                                      // initialValue: number,
                                      formatInput: true,
                                      keyboardType:
                                          TextInputType.numberWithOptions(
                                              signed: true, decimal: true),
                                      inputBorder: OutlineInputBorder(),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black26),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          )),
                                      child: TextFormField(
                                        controller: Cont_email,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Enter Email"),
                                      )),
                                  SizedBox(height: 10),
                                  Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 15),
                                      decoration: BoxDecoration(
                                          border:
                                              Border.all(color: Colors.black26),
                                          borderRadius: BorderRadius.all(
                                            Radius.circular(5),
                                          )),
                                      child: TextFormField(
                                        controller: Cont_password,
                                        decoration: InputDecoration(
                                            border: InputBorder.none,
                                            hintText: "Enter Password"),
                                      )),
                                  SizedBox(height: 15),
                                  GestureDetector(
                                      onTap: () {
                                        if (Cont_first_name.text.isEmpty) {
                                          ToastCall(context,
                                              "Please enter first name!");
                                        } else if (Cont_last_name
                                            .text.isEmpty) {
                                          ToastCall(context,
                                              "Please enter last name!");
                                        } else if (Cont_country_number
                                            .text.isEmpty) {
                                          ToastCall(
                                              context, "Please enter number!");
                                        } else if (Cont_email.text.isEmpty) {
                                          ToastCall(context,
                                              "Please enter email address!");
                                        } else if (Cont_password.text.isEmpty) {
                                          ToastCall(context,
                                              "Please enter password!");
                                        } else {
                                          RegisterApi();
                                        }
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.transparent),
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
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Container(
                                                        margin: EdgeInsets.only(
                                                            left: 10),
                                                        child: Text(
                                                          "Sign Up",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 20),
                                                        ))
                                                  ],
                                                )),
                                          ))),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Container(
                                        margin:
                                            EdgeInsets.only(right: 5, top: 15),
                                        alignment: Alignment.topRight,
                                        child: Text(
                                          "Already created account? Sign In",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15),
                                        ),
                                      ))
                                ],
                              ),
                            ),
                            Flexible(
                                flex: 0,
                                fit: FlexFit.tight,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
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
                                    Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.transparent),
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
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Image(
                                                    image: AssetImage(
                                                        'assets/ic_google.png'),
                                                  ),
                                                  Container(
                                                      margin: EdgeInsets.only(
                                                          left: 10),
                                                      child: Text(
                                                        "Continue with Google",
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 20),
                                                      ))
                                                ],
                                              )),
                                        )),
                                    SizedBox(height: 25),
                                  ],
                                ))
                          ],
                        ))))));
  }

  void RegisterApi() async {
    dialog_Progress(context);
    Map RegisterPost_Data = {
      "first_name": Cont_first_name.text.toString(),
      "last_name": Cont_last_name.text.toString(),
      "code": "+91",
      "contact": Cont_country_number.text.toString(),
      "email": Cont_email.text.toString(),
      "password": Cont_password.text.toString(),
    };
    http.Response res = await http.post(
        Uri.parse("https://zockpit.com/api/user/registration"),
        body: RegisterPost_Data);
    print("res");
    print(res.body);
    Navigator.of(context).pop();
    if (res.statusCode == 200) {
      Map Data = jsonDecode(res.body);
      if (Data['type'] == "success") {
        ToastCall(context, Data['message']);
        int user_id = Data['user_data']['user_id'];
        print("user_id ${user_id}");
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return BottomNavBar();
          },
        ));
      } else {
        ToastCall(context, Data['message']);
      }
    }
  }
}
