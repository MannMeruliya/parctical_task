import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

import '../model/country_information_model.dart';

class ModelProvider extends ChangeNotifier {
  List ModelList = [];
  bool isLoading = false;
  late Model model;
  bool isSearch = false;

  moveToSearch() {
    isSearch = !isSearch;
    notifyListeners();
  }

    getData() async {
    String BASE_URL = "https://api.api-ninjas.com/v1/country";
    String name = "london";

    Uri url = Uri.parse("$BASE_URL?name=$name");
    var response = await http.get(url, headers: {
      "X-Api-Key": "3Vj+dDPyJu4IHYe6DBl1Fg==KzDhdnaU7rpOy3HT",
    });
    print("Status code :: ${response.statusCode}");
    if (response.statusCode == 200) {
      ModelList = json.decode(response.body);
      print(ModelList);
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
