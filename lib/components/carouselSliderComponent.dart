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
  List<int> exampleList = [0, 1, 2, 3, 4];
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
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
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
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height,
                            alignment: Alignment.topRight,
                            child: Text(myData["upperFeed"][(i - 1)]["type"]),
                            decoration: new BoxDecoration(
                              image: new DecorationImage(
                                image: new NetworkImage(
                                    myData["upperFeed"][(i - 1)]["imgUrl"]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Text(
                                myData["upperFeed"][(i - 1)]["link"],
                                style: Theme.of(context).textTheme.subtitle,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                  child: Text(
                                myData["upperFeed"][(i - 1)]["title"],
                                style: Theme.of(context).textTheme.title,
                              ))
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Text(
                                myData["upperFeed"][(i - 1)]["readTimeMinutes"],
                                style: Theme.of(context).textTheme.caption,
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Text("Text"), //i dont know how divide text :(
                        ),
                        Expanded(child: carouselSliderComponentFooter())
                      ],
                    );
                  },
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
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
