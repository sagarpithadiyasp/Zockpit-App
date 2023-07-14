// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:crm_project/Helper/api_provider.dart';
import 'package:crm_project/Model/client_model.dart';
import 'package:crm_project/Model/service_model.dart';
import 'package:http/http.dart' as http;

import '../Model/employee_model.dart';

class ApiController {
  fetchClientData() async {
    final response = await http.get(Uri.parse(ApiUrl.url + "crm/getall/110"));
    if (response.statusCode == 200) {
      List<Records>? dropList =
          ClientData.fromJson(jsonDecode(response.body)).records;
      print(dropList![0].firstName);
      return dropList;
    } else {
      throw Exception('Failed to load album');
    }
  }

  fetchServiceData() async {
    final response = await http.get(Uri.parse(ApiUrl.url + "hr/getall/110"));
    if (response.statusCode == 200) {
      List<EmployeeRecords>? dropList =
          EmployeeData.fromJson(jsonDecode(response.body)).records;
      print(dropList![0].firstName);
      return dropList;
    } else {
      throw Exception('Failed to load album');
    }
  }

  fetchEmployeeData() async {
    final response =
        await http.get(Uri.parse(ApiUrl.url + "item/getallservice/110"));
    if (response.statusCode == 200) {
      List<ServiceRecords>? dropList =
          ServiceData.fromJson(jsonDecode(response.body)).records;
      print(dropList![0].detail);
      return dropList;
    } else {
      throw Exception('Failed to load album');
    }
  }
}
