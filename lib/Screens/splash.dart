// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, library_private_types_in_public_api, unnecessary_this, prefer_interpolation_to_compose_strings, prefer_final_fields, unused_field, no_leading_underscores_for_local_identifiers, use_build_context_synchronously

import 'dart:async';
import 'package:crm_project/Screens/sign_In_screen.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () async {
      Navigator.of(context).push(MaterialPageRoute(
        builder: (context) {
          return Sign_In_Screen();
        },
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width * 0.8,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/crm.png"), fit: BoxFit.contain)),
        ),
      ),
    );
  }
}
