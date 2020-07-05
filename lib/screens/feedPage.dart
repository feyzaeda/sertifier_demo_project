import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/components/appBarComponent.dart';
import 'package:sertifier_demo_project/components/carouselSliderComponent.dart';
import 'package:sertifier_demo_project/components/carouselSliderMyListComponenet.dart';

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
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("What are you learning today Ege?"),
          ),
          ListTile(
            title: carouselSliderComponent(),
          ),
          ListTile(
            title: Row(
              children: <Widget>[
                Expanded(child: Container(child: Text("MyList"))),
                Expanded(child: Container(child: Icon(Icons.arrow_forward_ios),alignment: Alignment.bottomRight,),)
              ],
            ),
          ),ListTile(
            title: carouselSliderMyListComponent(),
          )
        ],
      ),
      //scroll ozelligi kazandirmak icin gerekli komponentleri list icine attim

    );
  }
}