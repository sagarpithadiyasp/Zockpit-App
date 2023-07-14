// ignore_for_file: prefer__ructors, prefer__ructors_in_immutables, prefer__literals_to_create_immutables, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, prefer_const_constructors_in_immutables, avoid_unnecessary_containers

import 'package:booking_calendar/booking_calendar.dart';
import 'package:crm_project/Controller/api_controller.dart';
import 'package:crm_project/Model/client_model.dart';
import 'package:crm_project/utility.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

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

class SlotBooking extends StatefulWidget {
  const SlotBooking({super.key});

  @override
  State<SlotBooking> createState() => _SlotBookingState();
}

class _SlotBookingState extends State<SlotBooking> {
  final now = DateTime.now();
  late BookingService mockBookingService;

  @override
  void initState() {
    ApiController().fetchClientData();
    ApiController().fetchServiceData();
    ApiController().fetchEmployeeData();
    super.initState();
    mockBookingService = BookingService(
        serviceName: 'Mock Service',
        serviceDuration: 15,
        bookingEnd: DateTime(now.year, now.month, now.day, 23, 0),
        bookingStart: DateTime(now.year, now.month, now.day, 9, 0));
  }

  Stream<dynamic>? getBookingStreamMock(
      {required DateTime end, required DateTime start}) {
    return Stream.value([]);
  }

  Future<dynamic> uploadBookingMock(
      {required BookingService newBooking}) async {
    await Future.delayed(const Duration(seconds: 1));
    converted.add(DateTimeRange(
        start: newBooking.bookingStart, end: newBooking.bookingEnd));
    print('${newBooking.toJson()} has been uploaded');
  }

  List<DateTimeRange> converted = [];

  List<DateTimeRange> convertStreamResultMock({required dynamic streamResult}) {
    return converted;
  }

  ApiController apiController = ApiController();
  Records? dropdownValue;
  List<Records>? dropList;

  DataFetch() async {
    dropList = await apiController.fetchClientData();
    print("droplist");
    dropList?[0].bName;
    setState(() {
      dropdownValue = dropList!.first;
    });
    print(dropList!.length);
  }

  @override
  Widget build(BuildContext context) {
    PhoneNumber number = PhoneNumber(isoCode: 'IN');
    return Container(
      color: AppColor.subtextColor.withOpacity(0.1),
      child: Padding(
        padding: EdgeInsets.fromLTRB(15, 15, 15, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.75,
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: AppColor.bgcolor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownSearch<String>(
                        onChanged: (value) {
                          print("value");
                          dropdownValue = value! as Records?;
                          print(dropdownValue!.firstName);
                          setState(() {});
                        },
                        // onChanged: (Records value) {
                        //   print("value");
                        //   dropdownValue = value!;
                        //   print(dropdownValue!.bName);
                        //   setState(() {});
                        // },

                        // items: dropList
                        //     map<DropdownMenuItem<Records>>((Records value) {
                        //   return DropdownMenuItem<Records>(
                        //     value: value,
                        //     child: Text(value.firstName.toString()),
                        //   );
                        // }).toList(),

                        popupProps: PopupProps.menu(
                          showSelectedItems: true,
                        ),

                        // items: ["CUSTOMER 1", "CUSTOMER 2", "CUSTOMER 3"],

                        dropdownDecoratorProps: DropDownDecoratorProps(
                          dropdownSearchDecoration: InputDecoration(
                            border: InputBorder.none,
                            // labelText: "Menu mode",
                            hintText: "SELECT CUSTOMER",
                          ),
                        ),
                      )),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            colors: [
                              AppColor.linearColor1,
                              AppColor.linearColor2
                            ]),
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(
                      Icons.add,
                      color: AppColor.bgcolor,
                    ),
                  )
                ],
              ),
              SizedBox(height: 15),
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: AppColor.bgcolor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: InternationalPhoneNumberInput(
                  onInputChanged: (PhoneNumber number) {
                    print(number.phoneNumber);
                  },
                  inputDecoration: InputDecoration(
                      border: InputBorder.none, hintText: "Enter Phone Number"),
                  selectorConfig: SelectorConfig(
                    selectorType: PhoneInputSelectorType.BOTTOM_SHEET,
                  ),
                  autoValidateMode: AutovalidateMode.disabled,
                  textAlignVertical: TextAlignVertical.top,
                  selectorTextStyle: TextStyle(color: Colors.black),
                  initialValue: number,
                  formatInput: true,
                  keyboardType: TextInputType.numberWithOptions(
                      signed: true, decimal: true),
                  inputBorder: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: AppColor.bgcolor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      showSelectedItems: true,
                    ),
                    // items: ["SERVICE 1", "SERVICE 2", "SERVICE 3"],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        border: InputBorder.none,
                        // labelText: "Menu mode",
                        hintText: "Service",
                        // labelText: "Service",
                      ),
                    ),
                  )),
              SizedBox(height: 15),
              Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: AppColor.bgcolor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: DropdownSearch<String>(
                    popupProps: PopupProps.menu(
                      showSelectedItems: true,
                    ),
                    // items: ["EMPLOYEE 1", "EMPLOYEE 2", "EMPLOYEE 3"],
                    dropdownDecoratorProps: DropDownDecoratorProps(
                      dropdownSearchDecoration: InputDecoration(
                        border: InputBorder.none,
                        // labelText: "Menu mode",
                        hintText: "Choose Employee",
                        // labelText: "Choose Employee",
                      ),
                    ),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: BookingCalendar(
                  bookingGridCrossAxisCount: 3,
                  bookingService: mockBookingService,
                  convertStreamResultToDateTimeRanges: convertStreamResultMock,
                  getBookingStream: getBookingStreamMock,
                  uploadBooking: uploadBookingMock,
                  selectedSlotColor: AppColor.linearColor2.withOpacity(0.7),
                  bookedSlotColor: Colors.red.withOpacity(0.8),
                  availableSlotColor: AppColor.linearColor3.withOpacity(0.2),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
