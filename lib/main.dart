import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/ActivityWall/view/Activitywall.dart';
import 'package:flutter_application_1/app/Profile/views/Profile.dart';
import 'package:flutter_application_1/app/login/views/login.dart';
import 'package:get/get.dart';

import 'app/Routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
       initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: LoginView(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedindex = 0;
  int _counter = 0;

  void _navigationbottombar(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  final List<Widget> pages = [
    ActivityWall(),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Message page',
          ),
        ],
      ),
    ),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Settings',
          ),
        ],
      ),
    ),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    var image;
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                child: Container(
              margin: EdgeInsets.all(100.0),
              decoration: BoxDecoration(shape: BoxShape.circle //<-- SEE HERE
                  ),

              // ignore: prefer_const_constructors
              child: Image.network(
                "https://images.pexels.com/photos/9893780/pexels-photo-9893780.jpeg",
                height: 10,
              ),
            )),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: pages[selectedindex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedindex,
        onTap: _navigationbottombar,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home), label: "Activity Wall"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: "Settings"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account")
        ],
      ),

      floatingActionButton: selectedindex == 3
          ? null
          : FloatingActionButton(
              onPressed: null,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
