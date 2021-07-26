import 'package:flutter/cupertino.dart';

class Data {
  String name;
  double balance;
  Color firstColor;
  Color secondColor;

  Data({this.name, this.balance, this.firstColor, this.secondColor});

  factory Data.fromJson(Map<String, dynamic> parsedJson) {
    return Data(
      name: parsedJson["name"],
      balance: parsedJson["balance"],
      firstColor: Color(parsedJson["firstColor"]),
      secondColor: Color(parsedJson["secondColor"]),
    );
  }
}

class User {
  List<Data> data;

  User({this.data});
}
