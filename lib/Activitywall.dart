import 'package:flutter/material.dart';

class ActivityWallpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 55,
          automaticallyImplyLeading: false,
          title: Image.asset(
            "assets/images/skylab_logo.png",
            height: 30,
          ),
          backgroundColor: Colors.white,
          actions: <Widget>[
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.add_circle_outline_rounded,
                    size: 26.0,
                    color: Colors.black,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.black,
                  ),
                )),
          ],
        ),
        body: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              width: 360,
              height: 300,
              child: DecoratedBox(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/Activitywallsample.jpeg"),
                        fit: BoxFit.fill),
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(8),
                    shape: BoxShape.rectangle,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey, blurRadius: 6, spreadRadius: 2)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Actions",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 140,
                      ),
                      Text("what are you upto?",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Recognition",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  Spacer()
                ]),
          ),
          Container(
              height: 165,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Recognitioncontainer(
                      Title1: "SPOTLIGHT",
                      Title2: "Subramanian",
                      Color1: Colors.black,
                      Color2: Colors.purple),
                  Recognitioncontainer(
                      Title1: "LEADERBOARD",
                      Title2: "Overall Points",
                      Color1: Colors.black,
                      Color2: Colors.green),
                  Recognitioncontainer(
                      Title1: "lEADERBOARD",
                      Title2: "Overall Points",
                      Color1: Colors.black,
                      Color2: Colors.blue),
                  Recognitioncontainer(
                      Title1: "lEADERBOARD",
                      Title2: "Most Likes",
                      Color1: Colors.black,
                      Color2: Colors.yellow),
                ],
              ))
        ]));
  }
}

class Recognitioncontainer extends StatelessWidget {
  final String? Title1;
  final String? Title2;
  final Color? Color1;
  final Color? Color2;
  const Recognitioncontainer(
      {super.key,
      required this.Title1,
      required this.Title2,
      required this.Color1,
      required this.Color2});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        child: Container(
            width: 165,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color1!,
                    Color2!,
                  ],
                ),
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      Title1!,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    Spacer(),
                    if (Title2 != "Subramanian") ...[
                      Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                ClipOval(
                                    child: Image.asset(
                                  'assets/images/profileimage1.jpeg',
                                  width: 40,
                                  height: 40,
                                )),
                                SizedBox(
                                  width: 40,
                                ),
                                ClipOval(
                                    child: Image.asset(
                                  'assets/images/profileimage1.jpeg',
                                  width: 40,
                                  height: 40,
                                )),
                              ]),
                          ClipOval(
                              child: Image.asset(
                            'assets/images/profileimage1.jpeg',
                            width: 60,
                            height: 60,
                          )),
                        ],
                      ),
                    ] else ...[
                      ClipOval(
                          child: Image.asset(
                        'assets/images/profileimage1.jpeg',
                        width: 60,
                        height: 60,
                      )),
                    ],
                    Spacer(),
                    Text(
                      Title2!,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ]),
            )),
      ),
    );
  }
}
