import 'package:flutter/material.dart';
import 'components/appBarComponents.dart';
import 'components/bottomNavigationBarComponents.dart';
import 'screens/feedPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Row(
          children: <Widget>[
            Expanded(
             child: appBarComponents(),
            )
          ],
        ),
      ),
      body: feedPage(),

      bottomNavigationBar: bottomNavigationBarComponents(),
    );
  }
}
