import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/components/carouselSliderComponent.dart';

class feedPage extends StatefulWidget{
  @override
  feedPageState createState() => feedPageState();

}

class feedPageState extends State<feedPage> {
  @override
  Widget build(BuildContext context) {
    return carouselSliderComponent();
  }
}