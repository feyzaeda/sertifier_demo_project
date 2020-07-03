import 'package:flutter/material.dart';

class appBarComponent extends StatefulWidget{
  @override

  appBarComponentState createState() => appBarComponentState();

}

class appBarComponentState extends State<appBarComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text("appBar deneme",style: TextStyle(color: Colors.white),)
      ],
    );
  }
}