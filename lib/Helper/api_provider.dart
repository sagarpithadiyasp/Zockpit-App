// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print

import 'package:http/http.dart' as http;

class ApiUrl {
  static const url = "https://zockpit.com/api/";
}

class ApiProvider {
  Future<http.Response> getapicall(String url) async {
    var response;

    var urlParse = Uri.parse(url);
    response = await http.get(urlParse);
    if (response.statusCode == 200) {
      print("Pass");
    } else {
      print("Fail");
    }
    return response;
  }
}
