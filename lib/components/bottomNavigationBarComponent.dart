import 'package:flutter/material.dart';

class bottomNavigationBarComponent extends StatefulWidget{
  @override
  bottomNavigationBarComponentState createState() => bottomNavigationBarComponentState();

}

class bottomNavigationBarComponentState extends State<bottomNavigationBarComponent> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Image.asset('assets/icons/icon_star.png'),title: Text("Feed")),
        BottomNavigationBarItem(icon: Image.asset('assets/icons/icon_star.png'),title: Text("Label")),
        BottomNavigationBarItem(icon: Image.asset('assets/icons/icon_star.png'),title: Text("Label")),

      ],

    );
  }
}