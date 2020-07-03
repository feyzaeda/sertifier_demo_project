import 'package:flutter/material.dart';

class bottomNavigationBarComponents extends StatefulWidget{
  @override
  bottomNavigationBarComponentsState createState() => bottomNavigationBarComponentsState();

}

class bottomNavigationBarComponentsState extends State<bottomNavigationBarComponents> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.ac_unit),title: Text("deneme")),
        BottomNavigationBarItem(icon: Icon(Icons.title),title: Text("deneme"))
      ]
    );
  }
}