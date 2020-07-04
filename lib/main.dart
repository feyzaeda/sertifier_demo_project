import 'package:flutter/material.dart';
import 'components/appBarComponent.dart';
import 'components/bottomNavigationBarComponent.dart';
import 'screens/feedPage.dart';
import 'components/footerComponent.dart';

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
      body: feedPage(),

      bottomNavigationBar: footerComponent(),

    );
  }
}
