import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class carouselSliderComponent extends StatefulWidget{
  @override
  carouselSliderComponentState createState() => carouselSliderComponentState();

}

class carouselSliderComponentState extends State<carouselSliderComponent> {
  List<String> exampleList = ['deneme1', 'deneme2', 'deneme3', 'deneme4','deneme5'];
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
                    color: Colors.amber
                ),
                child: Text('text $i', style: TextStyle(fontSize: 16.0),)
            );
          },
        );
      }).toList(),
    );
  }
}