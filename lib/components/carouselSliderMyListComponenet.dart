import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/components/carouselSliderComponentFooterMyList.dart';
import 'package:sertifier_demo_project/screens/feedDetailPage.dart';

import 'carouselSliderComponentFooter.dart';

class carouselSliderMyListComponent extends StatefulWidget{
  @override
  carouselSliderMyListComponentState createState() => carouselSliderMyListComponentState();
}

class carouselSliderMyListComponentState extends State<carouselSliderMyListComponent> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 400.0),
      items: [1, 2, 3, ].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(

              ),
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
                            height: 400,
                            alignment: Alignment.topRight,
                            child: Text(myData["myList"][(i-1)]["type"]),
                            decoration: new BoxDecoration(
                              image: new DecorationImage(
                                image: new NetworkImage(
                                    myData["myList"][(i - 1)]["imgUrl"]),
                                fit: BoxFit.cover,

                              ),

                            ),
                          ),
                        ),


                        Expanded(
                          child: Row(
                            children: <Widget>[
                              Text(myData["myList"][(i-1)]["link"],style: Theme.of(context).textTheme.subtitle,)
                            ],
                          ),
                        ),
                        Expanded(
                          child: Row(

                            children: <Widget>[

                              Expanded(

                                  child:

                                  Text(myData["myList"][(i - 1)]["title"],style: Theme.of(context).textTheme.title,))
                            ],
                          ),
                        ),
                        Expanded(
                          child: Text("Text"),
                        ),

                        // readTimeMinutes changed int to string

                        Expanded(
                            child: carouselSliderComponentFooterMyList()
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