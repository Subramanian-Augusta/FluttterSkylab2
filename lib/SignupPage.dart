import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class SignUpDemo extends StatefulWidget {
  // const SignUpDemo({super.key, required this.title});

  // final String title;

  @override
  SignUpDemoState createState() => SignUpDemoState();
}

class SignUpDemoState extends State<SignUpDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
      ),
      backgroundColor: Colors.white,
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

                    child: Column(children: [
                      const Image(
                        image: AssetImage(
                          "assets/images/skylab_logo.png",
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Signup',
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
                      hintText: 'Enter valid email id as abc@gmail.com'),
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
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(6)),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const MyHomePage(title: "login")));
                  },
                  child: const Text(
                    'Signup',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
              const SizedBox(
                height: 130,
              ),
              // TextButton(
              //     onPressed: () {
              //       // Navigator.push(
              //       //     context, MaterialPageRoute(builder: (_) => SignUpDemo()));
              //     },
              //     child: const Text('New User? Create Account'))
            ],
          ),
        ),
      ),
    );
  }
}
