import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/components/appBarComponent.dart';
import 'package:sertifier_demo_project/components/bottomNavigationBarComponent.dart';
import 'package:sertifier_demo_project/components/carouselSliderComponent.dart';

class feedPage extends StatefulWidget{
  @override
  feedPageState createState() => feedPageState();

}

class feedPageState extends State<feedPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Expanded(
              child: appBarComponent(),
            ),
          ],
        )
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("What are you learning today Ege?"),
            ],
          ),
          Expanded(child: carouselSliderComponent()),
          Expanded(child: carouselSliderComponent())
        ],
      ),
      bottomNavigationBar: bottomNavigationBarComponent(),

    );
  }
}