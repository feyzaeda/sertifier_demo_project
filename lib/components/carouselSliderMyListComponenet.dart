import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/screens/feedDetailPage.dart';

import 'carouselSliderComponentFooterMyList.dart';

class carouselSliderMyListComponent extends StatefulWidget {
  @override
  carouselSliderMyListComponentState createState() =>
      carouselSliderMyListComponentState();
}

class carouselSliderMyListComponentState
    extends State<carouselSliderMyListComponent> {
  int data;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 400.0),
      items: [
        1,
        2,
        3,
      ].map((i) {
        return Container(child: Builder(
          builder: (BuildContext context) {
            return Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: GestureDetector(
                    child: FutureBuilder(
                      future: DefaultAssetBundle.of(context)
                          .loadString("assets/data/appData.json"),
                      builder: (context, snapshot) {
                        var myData = jsonDecode(snapshot.data.toString());

                        return Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 200,
                              child: Stack(
                                children: <Widget>[
                                  Image.network(
                                    myData["myList"][(i - 1)]["imgUrl"],
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                        color: Colors.grey,
                                        child: Text(
                                          myData["myList"][(i - 1)]["type"],
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ),
                                ],
                              ),
                            ),

                            Expanded(
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    myData["myList"][(i - 1)]["link"],
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
                                    myData["myList"][(i - 1)]["title"],
                                    style: Theme.of(context).textTheme.title,
                                  ))
                                ],
                              ),
                            ),
                            Expanded(
                              child: Text("Text"),
                            ),

                            // readTimeMinutes changed int to string

                            Expanded(
                                child: carouselSliderComponentFooterMyList())
                          ],
                        );
                      },
                    ),
                    onTap: () {
                      if ((i - 1) == 0) {
                        data = 0;
                      }
                      debugPrint("$i");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => feedDetailPage()));
                    },
                  ),
                ));
          },
        ));
      }).toList(),
    );
  }
}
