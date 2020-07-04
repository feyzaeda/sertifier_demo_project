import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/components/appBarComponent.dart';
import 'dart:convert';
import 'package:sertifier_demo_project/components/footerComponent.dart';

class feedDetailPage extends StatefulWidget{
  @override
  feedDetailPageState createState() => feedDetailPageState();

}

class feedDetailPageState extends State<feedDetailPage> {
  var data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("assets/data/appData.json"),
        builder: (context,snapshot){
          var myData = jsonDecode(snapshot.data.toString());
          if(myData == null){
            return Center(
              child: Text("loading"),
            );
          }
          else{
            return Center(
              child:
              //Text(myData["user"]["name"]),
              Text(myData["upperFeed"][0]["type"])
            );
          }

        },
      ),
      bottomNavigationBar: footerComponent(),
    );
  }
}