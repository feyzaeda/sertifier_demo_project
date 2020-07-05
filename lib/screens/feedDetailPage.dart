import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/components/footerComponent.dart';

class feedDetailPage extends StatefulWidget {
  @override
  feedDetailPageState createState() => feedDetailPageState();
}

class feedDetailPageState extends State<feedDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString("assets/data/appData.json"),
        builder: (context, snapshot) {
          var myData = jsonDecode(snapshot.data.toString());

          return ListView(
            children: <Widget>[
              ListTile(
                title: Image.network(myData["upperFeed"][1]["imgUrl"])
              ),
              ListTile(
                title: Text(myData["upperFeed"][1]["text"],),
              )
            ],
          );

        },
      ),
      bottomNavigationBar: footerComponent(),
    );
  }
}
