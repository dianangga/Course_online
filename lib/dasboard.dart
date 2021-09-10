import 'package:course_online_1/screen/main_page.dart';
import 'package:flutter/material.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({Key? key}) : super(key: key);

  @override
  _DasboardState createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  int _currentIndex = 0;
  final List<Widget> screens = [
    MainPage(),
    Center(
      child: Text("Page 2"),
    ),
    Center(
      child: Text("Page 3"),
    ),
    Center(
      child: Text("Page 4"),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home"),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: ClipRRect(
                child: Image(image: AssetImage("assets/ExploreSolid.png")),
              ),
              title: Text("search"),
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: ClipRRect(
                child: Image(image: AssetImage("assets/WhitelistSolid.png")),
              ),
              title: Text("person"),
              backgroundColor: Colors.blue),
          BottomNavigationBarItem(
              icon: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image(image: AssetImage("assets/image6.png")),
              ),
              title: Text("profile"),
              backgroundColor: Colors.blue),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
