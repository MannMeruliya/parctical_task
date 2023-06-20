import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:parctical_task/model/country_information_model.dart';

class ModelProvider extends ChangeNotifier {
  String BASE_URL = "https://api.api-ninjas.com/v1/country";
  String name = "name";
  List ModelList = [];
  bool isLoading = false;
  late Model model;

  getInformationData() async {
    Uri url = Uri.parse("$BASE_URL?name=$name");
    var response = await http.get(url, headers: {
      "X-Api-Key": "3Vj+dDPyJu4IHYe6DBl1Fg==KzDhdnaU7rpOy3HT",
      "YOUR_API_KEY": ""
    });
    print(response.statusCode);
    if (response.statusCode == 200) {
      ModelList = json.decode(response.body);
      print(ModelList.first['Model']);
      isLoading = false;
    } else {
      Fluttertoast.showToast(
        msg: "Something Wrong...",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
      );
    }
  }
}
