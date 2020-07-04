import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/components/footerComponent.dart';

class feedDetailPage extends StatefulWidget{
  @override
  feedDetailPageState createState() => feedDetailPageState();

}

class feedDetailPageState extends State<feedDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: footerComponent(),
    );
  }
}