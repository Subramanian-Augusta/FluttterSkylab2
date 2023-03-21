import 'package:flutter/material.dart';
import 'package:flutter_application_1/SignupPage.dart';
import 'package:flutter_application_1/main.dart';

class LoginDemo extends StatefulWidget {
  @override
  _LoginDemoState createState() => _LoginDemoState();
}

class _LoginDemoState extends State<LoginDemo> {
  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          
          colors:[Colors.white,Colors.blueGrey] )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        
        body: Column(
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
            const Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: TextField(
                decoration: InputDecoration(
                  // fillColor: Colors.black,
                    border: OutlineInputBorder(
                      borderSide:BorderSide(
                        width: 3,color: Colors.red
                      )
                    ),
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SignUpDemo()));
                },
                child: const Text('New User? Create Account',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ),
                ))
          ],
        ),
      ),
    );
  }
}
