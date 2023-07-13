// ignore_for_file: use_key_in_widget_constructors, unused_import, library_private_types_in_public_api, prefer_const_constructors, unnecessary_string_interpolations, prefer_interpolation_to_compose_strings, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, unnecessary_this, avoid_print, prefer_final_fields, unused_field, unused_element, unrelated_type_equality_checks, sort_child_properties_last

import 'dart:async';
import 'dart:io';
import 'package:crm_project/Screens/screen1.dart';
import 'package:crm_project/Screens/screen2.dart';
import 'package:crm_project/Screens/screen3.dart';
import 'package:crm_project/Screens/screen4.dart';
import 'package:crm_project/Screens/screen5.dart';
import 'package:crm_project/utility.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with TickerProviderStateMixin {
  var currentIndex = 0;

  selectedIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        exit(1);
      },
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Container(
            width: 60,
            height: 60,
            child: Icon(
              Icons.add,
              size: 30,
            ),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [AppColor.linearColor1, AppColor.linearColor2])),
          ),
          onPressed: () {},
        ),
        extendBody: true,
        drawerEnableOpenDragGesture: false,
        bottomNavigationBar: bottomnavbar(context),
        body: Stack(
          children: [
            if (currentIndex == 0)
              Screen1()
            else if (currentIndex == 1)
              Screen2()
            else if (currentIndex == 2)
              Screen3()
            else if (currentIndex == 3)
              Screen4()
            else
              Screen5(),
          ],
        ),
      ),
    );
  }

  Widget bottomnavbar(BuildContext context) {
    return Stack(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // margin: EdgeInsets.only(bottom: 10),
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: AppColor.bgcolor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  iconButton(
                    iconImg: "assets/contactunselect.png",
                    iconName: 'Contact',
                    currentInd: 0,
                    selectedind: 0,
                  ),
                  iconButton(
                    iconImg: "assets/sceduleunselect.png",
                    iconName: 'Scedule',
                    currentInd: 1,
                    selectedind: 1,
                  ),
                  iconButton(
                    iconImg: "assets/noteunselect.png",
                    iconName: 'Notes',
                    currentInd: 2,
                    selectedind: 2,
                  ),
                  iconButton(
                    iconImg: "assets/docunselect.png",
                    iconName: 'Docs',
                    currentInd: 3,
                    selectedind: 3,
                  ),
                  iconButton(
                    iconImg: "assets/toolunselect.png",
                    iconName: 'Tools',
                    currentInd: 4,
                    selectedind: 4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget iconButton({page, currentInd, selectedind, iconImg, iconName}) {
    return GestureDetector(
      onTap: () {
        HapticFeedback.mediumImpact();
        selectedIndex(selectedind);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: currentIndex == currentInd
                      ? Colors.white24
                      : Colors.transparent,
                  blurRadius: 15)
            ]),
            child: Image.asset(
              iconImg,
              color: currentIndex == currentInd
                  ? AppColor.linearColor1
                  : AppColor.subtextColor.withOpacity(.45),
              width: 22,
            ),
          ),
          SizedBox(height: 3),
          Text(
            "$iconName",
            style: TextStyle(
              fontSize: 10,
              color: currentIndex == currentInd
                  ? AppColor.linearColor1
                  : AppColor.subtextColor.withOpacity(.45),
            ),
          ),
        ],
      ),
    );
  }
}
