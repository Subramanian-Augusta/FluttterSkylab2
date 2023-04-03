import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/login/views/login.dart';
import 'package:flutter_application_1/app/signup/controller/signup_controller.dart';
import 'package:flutter_application_1/main.dart';
import 'package:get/get.dart';

class SignupView extends GetView<SignupController> {
  final signupController = Get.put<SignupController>(SignupController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupController>(
        builder: ((signupController) => Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Colors.white, Colors.purple.shade200])),
              child: Scaffold(
                // appBar: AppBar(
                //   toolbarHeight: 40,
                //   backgroundColor: Colors.transparent,
                // ),
                backgroundColor: Colors.transparent,
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 60.0),
                          child: Center(
                            child: Container(
                              width: 200,
                              height: 150,
                              /*decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(50.0)),*/

                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    // const Image(
                                    //   image: AssetImage(
                                    //     "assets/images/skylab_logo.png",
                                    //   ),
                                    // ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Text(
                                      'Sign up',
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        const Padding(
                          //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Email',
                                hintText:
                                    'Enter valid email id as abc@gmail.com'),
                          ),
                        ),
                        SizedBox(height: 15),
                        const Padding(
                          //padding:
                          //  EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                hintText: 'Enter secure password'),
                          ),
                        ),
                        SizedBox(height: 15),
                        const Padding(
                          //padding:
                          //  EdgeInsets.only(left: 15.0, right: 15.0, top: 15, bottom: 0),
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Confirm Password',
                                hintText: 'Enter password'),
                          ),
                        ),
                        // TextButton(
                        //   onPressed: () {
                        //     //TODO FORGOT PASSWORD SCREEN GOES HERE
                        //   },
                        //   child: const Text(
                        //     'Forgot Password?',
                        //     style: TextStyle(color: Colors.black, fontSize: 15),
                        //   ),
                        // ),
                        SizedBox(height: 35),
                        Container(
                          height: 50,
                          width: 340,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(6)),
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) =>
                                          const MyHomePage(title: "login")));
                            },
                            child: const Text(
                              'Signup',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 130,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => LoginView()));
                            },
                            child: const Text(
                              'Already have an account?',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ))
                      ],
                    ),
                  ),
                ),
              ),
            )));
  }
}
