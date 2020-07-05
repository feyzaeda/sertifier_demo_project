import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/components/appBarComponent.dart';
import 'package:sertifier_demo_project/components/bottomNavigationBarComponent.dart';

class page2 extends StatefulWidget{
  @override
  page2State createState() => page2State();

}

class page2State extends State<page2> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Row(
        children: <Widget>[
          Expanded(
            child: appBarComponent(),
          )
        ],
      ),
    ),

  );
  }
}