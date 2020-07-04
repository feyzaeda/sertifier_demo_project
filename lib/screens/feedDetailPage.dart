import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/components/appBarComponent.dart';
import 'dart:convert';
import 'package:sertifier_demo_project/components/footerComponent.dart';

class feedDetailPage extends StatefulWidget{
  @override
  feedDetailPageState createState() => feedDetailPageState();

}

class feedDetailPageState extends State<feedDetailPage> {
  List data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            appBarComponent()
          ],
        ),
      ),
      body: Center(
        child: FutureBuilder(
          future: DefaultAssetBundle.of(context).loadString('assets/data/appData.json'),
          builder: (contex, snapshot){
            data = jsonDecode(snapshot.data.toString());
            return ListView.builder(itemBuilder: (BuildContext context, int index){
              //if(snapshot = 'upperFeed'){}
              return Card(
                child: Column(
                  children: <Widget>[

                  ],
                ),
              );
            });
          },
        ),
      ),
      bottomNavigationBar: footerComponent(),
    );
  }
}