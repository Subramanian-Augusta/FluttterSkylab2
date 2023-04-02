import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/signup/views/SignupPage.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';
//import 'package:flutter_application_1/Extensions.dart';
import '../../Apicall/apiService.dart';
import '../controllers/login_controller.dart';
// ignore: depend_on_referenced_packages



class LoginView extends GetView<LoginController> {
  final loginController = Get.put<LoginController>(LoginController());
  // var EmailValue;
  // var PasswordValue;
  bool _isAgeValidated = true;
  // var emailController = TextEditingController();
  // var passwordController = TextEditingController();
  //var email = emailController.text;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GetBuilder<LoginController>(
        builder: ((loginController) => Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.white, Colors.purple.shade200])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 120.0),
                child: Center(
                  child: Container(
                      width: 200,
                      height: 150,
                      /*decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50.0)),*/

                      child: const Image(
                        image: AssetImage(
                          "assets/images/skylab_logo.png",
                        ),
                      )),
                ),
              ),
              Padding(
                //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  child: TextFormField(
                    controller: loginController.emailController,
                    validator: (value) {
                      if (value == null ||
                          value.isEmpty ||
                          !value.contains('@') ||
                          !value.contains('.com')) {
                        return 'Invalid Email';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        // fillColor: Colors.black,
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.red)),
                        labelText: 'Email',
                        hintText: 'Enter valid email id as abc@gmail.com'),
                    //onChanged: (value) => EmailValue = value
                  ),
                ),
              ),
              SizedBox(height: 15),
              Padding(
                //padding:
                //  EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: TextFormField(
                  controller: loginController. passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Enter secure password'),

                  //onChanged: (value) => PasswordValue = value,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: TextButton(
                  onPressed: () {
                    //TODO FORGOT PASSWORD SCREEN GOES HERE
                  },
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Container(
                height: 50,
                width: 340,
                decoration: BoxDecoration(
                    color: Colors.blue, borderRadius: BorderRadius.circular(5)),
                child: TextButton(
                  onPressed: () {
                    LoginAuthentication(
                        loginController. emailController.text, loginController.passwordController.text);

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const MyHomePage(title: "login")));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 240,
              ),
              Divider(
                color: Colors.grey,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SignupView()));
                  },
                  child: const Text(
                    'New User? Create Account',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ))
            ],
          ),
        ),
      ),
    )
        )
    );
    
  }
}
