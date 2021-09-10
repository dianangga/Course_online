import 'package:flutter/material.dart';

class SlideMenu extends StatefulWidget {
  const SlideMenu({Key? key}) : super(key: key);

  @override
  _SlideMenuState createState() => _SlideMenuState();
}

class _SlideMenuState extends State<SlideMenu> {
  int index = 0;
  List screens = [];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.only(top: 15),
            child: SingleChildScrollView(
              padding: EdgeInsets.only(left: 24, right: 15),
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                slideMenu(0, "About"),
                slideMenu(1, "Lesson"),
                slideMenu(2, "Tools"),
                slideMenu(3, "Resource"),
                slideMenu(4, "Reviews"),
              ]),
            )),

        //
        Container()
      ],
    );
  }

  Container slideMenu(int index, String title) {
    return Container(
        margin: EdgeInsets.only(right: 12),
        child: GestureDetector(
          onTap: () {
            setState(() {
              this.index = index;
              print(this.index);
            });
          },
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: (this.index == index)
                      ? Color(0xFFD1E2FD)
                      : Colors.transparent,
                ),
                padding: EdgeInsets.fromLTRB(10, 4, 10, 4),
                child: Text(
                  title,
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: "Poppins",
                    color: (this.index == index)
                        ? Color(0xFF006EEE)
                        : Colors.black,
                  ),
                )),
          ),
        ));
  }
}
