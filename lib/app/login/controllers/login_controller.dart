// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/Apicall/apiService.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

// ignore: prefer_typing_uninitialized_variables

  void authentication(BuildContext context) {
    LoginAuthentication(emailController.text, passwordController.text, context);
  }
}
