import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/components/carouselSliderComponentFooter.dart';
import 'package:sertifier_demo_project/screens/feedDetailPage.dart';

class carouselSliderComponent extends StatefulWidget {
  @override
  carouselSliderComponentState createState() => carouselSliderComponentState();
}

class carouselSliderComponentState extends State<carouselSliderComponent> {
  List<int> exampleList = [
  0,1,2,3,4
  ];
  var data;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 400.0),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(),
              child: GestureDetector(
                child: FutureBuilder(
                  future: DefaultAssetBundle.of(context)
                      .loadString("assets/data/appData.json"),
                  builder: (context, snapshot) {
                    var myData = jsonDecode(snapshot.data.toString());

                    return Column(

                      children: <Widget>[
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  width: 250,
                                  height: 250,
                                  alignment: Alignment.topRight,
                                  child: Text(myData["upperFeed"][(i-1)]["type"]),
                                  decoration: new BoxDecoration(
                                    image: new DecorationImage(
                                      image: new NetworkImage(
                                          myData["upperFeed"][(i - 1)]["imgUrl"]),
                                      fit: BoxFit.cover,

                                    ),

                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Text(myData["upperFeed"][(i-1)]["link"])
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(

                            children: <Widget>[

                              Expanded(

                                  child:

                                      Text(myData["upperFeed"][(i - 1)]["title"]))
                            ],
                          ),
                        ),
                        /*Expanded(
                          child: Row(
                            children: <Widget>[
                              Text(myData["upperFeed"][(i-1)]["readTimeMinutes"])

                            ],
                          ),
                        ),*/

                        // int i stringe dönüştümek gerek

                        Expanded(
                          child: carouselSliderComponentFooter()
                        )

                      ],
                    );
                  },
                ),

                onTap: (){
                  debugPrint("$i");
                  Navigator.push(context, MaterialPageRoute(
                      builder: (context) => feedDetailPage()));
                },

              ),
            );
          },
        );
      }).toList(),
    );
  }
}
