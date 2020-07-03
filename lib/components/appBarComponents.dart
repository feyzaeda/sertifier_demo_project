import 'package:flutter/material.dart';

class appBarComponents extends StatefulWidget{
  @override

  appBarComponentsState createState() => appBarComponentsState();

}

class appBarComponentsState extends State<appBarComponents> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text("appBar deneme",style: TextStyle(color: Colors.white),)
      ],
    );
  }
}