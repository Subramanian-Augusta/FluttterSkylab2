import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/Activitywall_controller.dart';
class ActivityWall extends GetView<ActivityWallController> {
  final activitywallController = Get.put<ActivityWallController>(ActivityWallController());
  @override
  Widget build(BuildContext context) {
     return GetBuilder<ActivityWallController>( 
      builder: ((loginControactivitywallControllerller) =>  Scaffold(
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
                    Icons.notifications_active_outlined,
                    color: Colors.black,
                  ),
                )),
            Padding(
                padding: EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.chat_bubble_outline_rounded,
                    color: Colors.black,
                  ),
                )),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 360,
                  height: 300,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/Activitywallsample.jpeg"),
                            fit: BoxFit.fill),
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8),
                        shape: BoxShape.rectangle,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 6,
                              spreadRadius: 2)
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
              Divider(
                color: Colors.grey,
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
              SizedBox(
                height: 5,
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
                  )),
              SizedBox(
                height: 15,
              ),
              Divider(color: Colors.grey),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Stories",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Container(
                        height: 100,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              StoriesContainer(UserName: "Mani",isLive: true),
                              StoriesContainer(UserName: "Saravanan",isLive: false,),
                              StoriesContainer(UserName: "Nandha",isLive: false,),
                              StoriesContainer(UserName: "Praman",isLive: false,),
                              StoriesContainer(UserName: "Praman",isLive: false,),
                              StoriesContainer(UserName: "Praman",isLive: false,),
                              StoriesContainer(UserName: "Praman",isLive: false,),
                            ]),
                      )
                    ]),
              ),
              Divider(
                color: Colors.grey,
              ),
            ],
          ),
        ))
      )
     );
     
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
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.grey,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: ClipOval(
                                        child: Image.asset(
                                      'assets/images/profileimage1.jpeg',
                                      width: 40,
                                      height: 40,
                                    )),
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                CircleAvatar(
                                  radius: 20,
                                  backgroundColor: Colors.grey,
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: ClipOval(
                                        child: Image.asset(
                                      'assets/images/profileimage1.jpeg',
                                      width: 40,
                                      height: 40,
                                    )),
                                  ),
                                )
                              ]),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey,
                            child: Padding(
                              padding: const EdgeInsets.all(2),
                              child: ClipOval(
                                  child: Image.asset(
                                'assets/images/profileimage1.jpeg',
                                width: 60,
                                height: 60,
                              )),
                            ),
                          )
                        ],
                      ),
                    ] else ...[
                      CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.grey,
                        child: Padding(
                          padding: const EdgeInsets.all(2),
                          child: ClipOval(
                              child: Image.asset(
                            'assets/images/profileimage1.jpeg',
                            width: 60,
                            height: 60,
                          )),
                        ),
                      )
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

class StoriesContainer extends StatelessWidget {
  final String? UserName;
  final bool? isLive;

  const StoriesContainer({super.key, required this.UserName,required this.isLive});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[

              
              CircleAvatar(
                radius: 30,
                backgroundColor:(isLive == true) ?Colors.red :Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: Stack
                  (
                    children:<Widget>[ ClipOval(
                        child: Image.asset(
                      'assets/images/profileimage1.jpeg',
                      width: 55,
                      height: 55,
                    )),

                    if (isLive == true ) ...[
                    Padding(
                      padding: const EdgeInsets.only(left:14.0,bottom: 0),
                      
                       
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                        //  crossAxisAlignment: CrossAxisAlignment.center,
                          children:<Widget>[Container(
                            height:10 ,
                        width: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: Colors.red
                        ),

                            child: Text(
                              "LIVE",
                              style: TextStyle(
                                color: Colors.black,
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                            
                              ),
                            ),
                          )]
                        ),
                      
                    )
                    ]
                    
                    ]
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                UserName!,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              )
            ]),
      ),
    );
  }
}
