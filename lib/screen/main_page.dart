import 'package:course_online_1/screen/card/articles_card.dart';
import 'package:course_online_1/screen/card/kategori_card.dart';
import 'package:course_online_1/screen/card/popular_course.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                //header
                Container(
                  margin: EdgeInsets.fromLTRB(30, 24, 30, 15),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: Image(
                            image: AssetImage("assets/image6.png"),
                          ),
                        ),
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Image(image: AssetImage("assets/btn_search.png")),
                          Image(image: AssetImage("assets/btn_notif.png")),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
            //Headline
            Container(
                margin: EdgeInsets.fromLTRB(30, 10, 127, 10),
                alignment: Alignment.centerLeft,
                child: Text(
                  "want to study class what's today?",
                  style: TextStyle(fontSize: 17.1, fontWeight: FontWeight.w600),
                )),

            //Kateori Card
            KategoriCard(),

            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 24, 10),
              child: Row(
                children: [
                  Text(
                    "Popular Course",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "show all",
                    style: TextStyle(color: Color(0xFF006EEE), fontSize: 10),
                  )
                ],
              ),
            ),

            //Popular Coursex
            PopularCourse(),

            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 24, 10),
              child: Row(
                children: [
                  Text(
                    "Articles",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  Spacer(),
                  Text(
                    "show all",
                    style: TextStyle(color: Color(0xFF006EEE), fontSize: 10),
                  )
                ],
              ),
            ),
            ArticleCard(),
          ],
        ),
      ),
    );
  }
}
