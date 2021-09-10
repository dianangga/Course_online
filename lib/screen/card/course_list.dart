import 'package:flutter/material.dart';

class CourseList extends StatefulWidget {
  const CourseList({Key? key}) : super(key: key);

  @override
  _CourseListState createState() => _CourseListState();
}

class _CourseListState extends State<CourseList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 3, 24, 0),
      width: 500,
      height: 95,
      child: Card(
        child: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 13),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Image(image: AssetImage("assets/number_1.png")),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Visual Design Intro"),
                          Text(
                            "04:47",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFFA2ADB1),
                              fontSize: 9,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 13),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Image(image: AssetImage("assets/number_2.png")),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Design Reference"),
                          Text(
                            "03:45",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFFA2ADB1),
                              fontSize: 9,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 13),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Image(image: AssetImage("assets/number_3.png")),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Create Moodboard"),
                          Text(
                            "03:42",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFFA2ADB1),
                              fontSize: 9,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 13),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: Image(image: AssetImage("assets/number_4.png")),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Wireframe to Visual Design Part 1"),
                          Text(
                            "09:03",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Color(0xFFA2ADB1),
                              fontSize: 9,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
