import 'package:flutter/material.dart';

import 'login.dart';

class Profilepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        automaticallyImplyLeading: false,
        title: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Subramanian",
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Text(
              "@subramanian01",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
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
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      useRootNavigator: true,
                      backgroundColor: Colors.white,
                      builder: (context) {
                        return Wrap(
                          children: [
                            ListTile(
                              leading: Icon(Icons.share),
                              title: Text('Share'),
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(Icons.manage_accounts_rounded),
                              title: Text('Profile Settings'),
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(Icons.lock_open),
                              title: Text('Account Settings'),
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(Icons.star),
                              title: Text('Ads'),
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(Icons.help),
                              title: Text('Help'),
                            ),
                            Divider(),
                            ListTile(
                              leading: Icon(Icons.cancel_outlined),
                              title: Text(
                                'Logout',
                                style: TextStyle(color: Colors.red),
                              ),
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return AlertDialog(
                                        title: Text(
                                          "Logout?",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        content: Text(
                                            "Are you sure want to logout your account?"),
                                        actions: <Widget>[
                                          OutlinedButton(
                                              child: Text(
                                                "Yes",
                                                style: TextStyle(
                                                    color: Colors.red),
                                              ),
                                              onPressed: () {
                                                Navigator.push(
                                                    context,
                                                    MaterialPageRoute(
                                                        builder: (_) =>
                                                            LoginDemo()));
                                              }),
                                          OutlinedButton(
                                            child: Text(
                                              "No",
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          )
                                        ],
                                      );
                                    });
                                // content:
                                // const Text(
                                //     "It is the body of the alert Dialog");
                              },
                            ),
                            ListTile(
                                // leading: Icon(Icons.cancel_outlined),
                                // title: Text('Logout',
                                // style: TextStyle(color: Colors.red),),
                                ),
                            // SizedBox(height: 20,)
                          ],
                        );
                      });
                },
                child: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
              )),
        ],
      ),
      body: SafeArea(
          child: Column(
        children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 12),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey,
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: ClipOval(
                          child: Image.asset(
                        'assets/images/profileimage1.jpeg',
                        width: 110.0,
                        height: 110.0,
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  width: 33,
                ),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
                    Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Column(children: <Widget>[
                            Text(
                              "8",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Posts",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            )
                          ]),
                          SizedBox(
                            width: 28,
                          ),
                          Column(children: <Widget>[
                            Text(
                              "5",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Followers",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            )
                          ]),
                          SizedBox(
                            width: 28,
                          ),
                          Column(children: <Widget>[
                            Text(
                              "8",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Text(
                              "Following",
                              style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                            )
                          ]),
                        ]),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      shadowContainer(days: "2 days", streak: "Current Streak"),
                      SizedBox(
                        width: 20,
                      ),
                      shadowContainer(days: "4 days", streak: "Best Streak"),
                    ],
                  )
                ]),
              ]),
          SizedBox(
            height: 55,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  Icons.calendar_month,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                Text("Joined", style: TextStyle(color: Colors.grey)),
                SizedBox(
                  width: 5,
                ),
                Text("Jan ,23")
              ],
            ),
          ),
          const Divider(
            color: Colors.grey,
          )
        ],
      )),
    );
  }
}

class shadowContainer extends StatelessWidget {
  final String? days;
  final String? streak;
  const shadowContainer({super.key, required this.days, required this.streak});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 6, spreadRadius: 2)
            ]),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            children: [
              Text(
                days!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(streak!,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
