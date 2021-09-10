// Popular Card
import 'package:course_online_1/screen/card/articles_card.dart';
import 'package:course_online_1/screen/second_page.dart';
import 'package:flutter/material.dart';

class PopularCourse extends StatefulWidget {
  const PopularCourse({Key? key}) : super(key: key);

  @override
  _PopularCourseState createState() => _PopularCourseState();
}

class _PopularCourseState extends State<PopularCourse> {
  List prop = [];

  _PopularCourseState() {
    prop.add({
      "price": "Free",
      "title": "UI Design: Wireframe to Visual Design",
      "image": "image7.png",
      "rate": 4016
    });
    prop.add({
      "price": "Free",
      "title": "UI Design: Styleguide with Figma",
      "image": "image8.png",
      "rate": 1016
    });
  }

  @override
  Widget build(BuildContext context) {
    return buildCard(context);
  }

  Container buildCard(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 12,
      ),
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.width / 1.9,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
      ),
      child: ListView(
          padding: EdgeInsets.only(left: 15, right: 15),
          scrollDirection: Axis.horizontal,
          children: prop.map((data) {
            return cardPopuler(context, data["price"], data["title"],
                data["image"], data['rate']);
          }).toList()),
    );
  }

  Container cardPopuler(BuildContext context, String price, String title,
      String image, int rate) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
      ),
      height: MediaQuery.of(context).size.width / 3,
      width: MediaQuery.of(context).size.width / 2,
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return SecondPage();
          }));
        },
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    height: MediaQuery.of(context).size.width / 3,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(18),
                            topRight: Radius.circular(18)),
                        image: DecorationImage(
                            image: AssetImage("assets/$image"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(12, 7, 12, 0),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            price,
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 8,
                                fontFamily: "Poppins"),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 2),
                            child: Text(
                              title,
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "Poppins"),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 4),
                            child: Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(right: 6),
                                    child: Image(
                                        image: AssetImage("assets/star.png"))),
                                Container(
                                    margin: EdgeInsets.only(right: 6),
                                    child: Image(
                                        image: AssetImage("assets/star.png"))),
                                Container(
                                    margin: EdgeInsets.only(right: 6),
                                    child: Image(
                                        image: AssetImage("assets/star.png"))),
                                Container(
                                    margin: EdgeInsets.only(right: 6),
                                    child: Image(
                                        image: AssetImage("assets/star.png"))),
                                Container(
                                    margin: EdgeInsets.only(right: 6),
                                    child: Image(
                                        image: AssetImage("assets/star.png"))),
                                Container(
                                    margin: EdgeInsets.only(left: 4),
                                    child: Text(
                                      rate.toString(),
                                      style: TextStyle(
                                          fontSize: 8.5, color: Colors.grey),
                                    ))
                              ],
                            ),
                          )
                        ]),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
