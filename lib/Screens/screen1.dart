// ignore_for_file: prefer__ructors, prefer__ructors_in_immutables, prefer__literals_to_create_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:crm_project/utility.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Screen1 extends StatelessWidget {
  Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(0, 90),
          child: AppBar(
            centerTitle: true,
            title: Text("Appointment",
                style: TextStyle(color: AppColor.linearColor1)),
            backgroundColor: AppColor.bgcolor,
            bottom: TabBar(
              unselectedLabelColor: AppColor.subtextColor,
              labelColor: AppColor.linearColor1,
              indicatorColor: AppColor.linearColor1,
              tabs: [
                Tab(
                  text: "Menu 1",
                ),
                Tab(
                  text: "Menu 2",
                ),
                Tab(
                  text: "Menu 3",
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(bottom: 50),
          child: TabBarView(
            children: [
              SlotBooking(),
              Center(
                child: Text("Menu 2"),
              ),
              Center(
                child: Text("Menu 3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SlotBooking extends StatelessWidget {
  const SlotBooking({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 50,
            width: MediaQuery.of(context).size.width * 0.8,
            child: DropdownButton<int>(
              value: 6,
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: AppColor.linearColor1),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (int? newValue) {},
              items: <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
                  .map<DropdownMenuItem<int>>((int value) {
                return DropdownMenuItem<int>(
                  value: value,
                  child: Text(value.toString()),
                );
              }).toList(),
            )),
      ],
    );
  }
}
