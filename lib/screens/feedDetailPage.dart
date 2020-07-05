import 'dart:convert';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/components/footerComponent.dart';

class feedDetailPage extends StatefulWidget {
  @override
  feedDetailPageState createState() => feedDetailPageState();
}

class feedDetailPageState extends State<feedDetailPage> {
  int gelenData;
  double _progress = 0;
  void startTimer(){
    new Timer.periodic(Duration(seconds: 1), (Timer timer) => setState(
            (){
              if (_progress ==1) {
                timer.cancel();
              }
              else{
                _progress +=0.2;
              }

            }));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString("assets/data/appData.json"),
        builder: (context, snapshot) {
          var myData = jsonDecode(snapshot.data.toString());

          return Center(
            child: CircularProgressIndicator(
              strokeWidth: 10,
              backgroundColor: Colors.cyanAccent,
              valueColor: new AlwaysStoppedAnimation<Color>(Colors.red),
              value: _progress,

            ),

          );
        },
      ),
      bottomNavigationBar: footerComponent(),
    );
  }
}
