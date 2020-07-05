import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/components/bottomNavigationBarComponent.dart';
import 'package:sertifier_demo_project/screens/feedDetailPage.dart';
import 'screens/feedPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.white),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return feedPage();
  }
}
