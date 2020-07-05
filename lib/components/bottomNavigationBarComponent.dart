import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/screens/feedPage.dart';
import 'package:sertifier_demo_project/screens/page2.dart';
import 'package:sertifier_demo_project/screens/page3.dart';

class bottomNavigationBarComponent extends StatefulWidget{
  @override
  bottomNavigationBarComponentState createState() => bottomNavigationBarComponentState();

}

class bottomNavigationBarComponentState extends State<bottomNavigationBarComponent> {

  int _selectionTabIndex = 0;

  List _page = [
    feedPage(),
    page2(),
    page3(),
  ];

  _changeIndex(int index){
    setState(() {
      _selectionTabIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _page[_selectionTabIndex],),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectionTabIndex,
        onTap: _changeIndex,
        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/icons/icon_star.png'),title: Text("Feed")),
          BottomNavigationBarItem(icon: Image.asset('assets/icons/icon_star.png'),title: Text("Label")),
          BottomNavigationBarItem(icon: Image.asset('assets/icons/icon_star.png'),title: Text("Label")),

        ],

      ),
    );
  }
}
