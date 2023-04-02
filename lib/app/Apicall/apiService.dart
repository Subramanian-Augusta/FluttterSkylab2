import 'dart:convert';

import 'dart:io';

import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';



void LoginAuthentication(String email, String password) async {
  print(jsonEncode(<String, String>{'Email': email, 'Password': password}));
 // var url = Uri.parse('http://192.168.1.207:5050/login');
  var url = Uri.parse('http://192.168.33.161:5050/login');
  final http.Response response = await http.post(
    url,
    headers: {'Content-Type': "application/json"},
    body: jsonEncode(<String, String>{'Email': email, 'Password': password}),
  );
  if (response.statusCode == 200) {
    print(response.body);
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
