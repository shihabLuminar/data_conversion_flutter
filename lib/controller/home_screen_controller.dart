import 'package:data_conversion_flutter/model/home_screen/details_model.dart';
import 'package:flutter/material.dart';

class HomeScreenController with ChangeNotifier {
  // String name = "shihab";

  List<Map> details = [
    {
      "name": "Shihab",
      "place": "Ernakulam",
      "phone": "970987654567",
    },
    {
      "name": "usder 2",
      "place": "Ernakulam",
      "phone": "970987654567",
    },
    {
      "name": "usder ",
      "place": "Ernakulam",
      "phone": "970987654567",
    }
  ];
  List<Details> detailsObj = [];

  convertTomodel() {
    detailsObj = details
        .map(
          (element) => Details(
            name: element["name"],
            phone: element["phone"],
            place: element["place"],
          ),
        )
        .toList();
  }
}
