import 'package:course_online_1/screen/card/course_list.dart';
import 'package:course_online_1/screen/card/slide_menu.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: ListView(
            children: [
              Column(
                //header
                children: [
                  Container(
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Image(
                                image: AssetImage("assets/btn_back.png"))),
                        Spacer(),
                        Text("Course Detail"),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Image(
                                image: AssetImage("assets/btn_wishlist.png"))),
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.all(5),
                    width: 303,
                    height: 203,
                    margin: EdgeInsets.fromLTRB(24, 15, 20, 20),
                    child: Stack(
                      children: [
                        Center(
                          child: Image(
                              image: AssetImage(
                            "assets/image11.png",
                          )),
                        ),
                        Center(
                            child: Image(
                                image: AssetImage(
                          "assets/btn_play.png",
                        ))),
                      ],
                    ),
                  ),

                  // headline
                  Container(
                    margin: EdgeInsets.fromLTRB(24, 0, 132, 15),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "UI Design : Wireframe to Visual Design",
                          style: TextStyle(fontSize: 18),
                        )),
                  ),

                  //profile
                  Container(
                    margin: EdgeInsets.fromLTRB(24, 0, 24, 0),
                    child: Row(
                      children: [
                        Image(image: AssetImage("assets/image12.png")),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Shem Bizo"),
                              Text("Mentor UI Designer")
                            ],
                          ),
                        ),
                        Spacer(),
                        Image(image: AssetImage("assets/icon_right.png"))
                      ],
                    ),
                  ),

                  //slide menu
                  SlideMenu(),

                  //Course List
                  Container(
                    margin: EdgeInsets.only(left: 24, top: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Course List",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  CourseList(),

                  //bottom
                  Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Container(
                          width: 375,
                          height: 72,
                          color: Colors.white,
                          padding: EdgeInsets.only(left: 22),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text.rich(TextSpan(children: [
                              TextSpan(
                                text: "Price\n",
                                style: TextStyle(
                                    color: Color(0xFFA2ADB1),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Poppins",
                                    fontSize: 12),
                              ),
                              TextSpan(
                                text: "Free",
                                style: TextStyle(
                                    color: Color(0xFF22B07D),
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "Poppins",
                                    fontSize: 18),
                              )
                            ])),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          width: 200,
                          height: 72,
                          decoration: BoxDecoration(
                              color: Color(0xFF006EEE),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20))),
                          padding: EdgeInsets.only(left: 22),
                          child: Center(
                              child: Text("Start Course",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: "Poppins",
                                      fontSize: 12))),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
