import 'dart:convert';

import 'dart:io';

import 'package:flutter_application_1/app/login/controllers/login_controller.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

import 'package:flutter/material.dart';

void LoginAuthentication(
    String email, String password, BuildContext context) async {
  print(jsonEncode(<String, String>{'Email': email, 'Password': password}));
  var url = Uri.parse('http://192.168.1.207:5050/login');
  //var url = Uri.parse('http://192.168.33.161:5050/login');
  final http.Response response = await http.post(
    url,
    headers: {'Content-Type': "application/json"},
    body: jsonEncode(<String, String>{'Email': email, 'Password': password}),
  );
  var authMessage;
  if (response.statusCode == 200) {
    print(response.body);

    var resData = json.decode(response.body);
    Map myMap = resData;

    myMap.forEach((key, value) {
      print('$key : $value');
      if (key == "Message") {
        authMessage = value;
      }
    });
    print(authMessage);
    if (authMessage == "User Login Successfully") {
      Navigator.push(context,
          MaterialPageRoute(builder: (_) => const MyHomePage(title: "login")));
      Fluttertoast.showToast(
          msg: authMessage,
          textColor: Colors.white,
          toastLength: Toast.LENGTH_LONG,
          backgroundColor: Colors.green,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 3);
    } else {
      Fluttertoast.showToast(
          msg: authMessage,
          textColor: Colors.white,
          toastLength: Toast.LENGTH_LONG,
          backgroundColor: Colors.red,
          timeInSecForIosWeb: 3,
          gravity: ToastGravity.TOP);
    }
  } else {
    print('A network error occurred');
  }

  // print(response);
  // if (response.statusCode == 201) {
  //   return response;
  // } else {
  //   print(response);
  //   return response;
  // }
}

// class Album {
//   final int id;
//   final String title;
 
//   Album({required this.id, required this.title});
 
//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }
