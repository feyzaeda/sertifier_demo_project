import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class carouselSliderComponent extends StatefulWidget{
  @override
  carouselSliderComponentState createState() => carouselSliderComponentState();

}

class carouselSliderComponentState extends State<carouselSliderComponent> {
  List<String> exampleList = ['deneme1', 'deneme2', 'deneme3', 'deneme4','deneme5'];
  var data;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 400.0),
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                decoration: BoxDecoration(
                    color: Colors.pink
                ),
                child: Center(
                  child: FutureBuilder(
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
                )
            );
          },
        );
      }).toList(),
    );
  }
}