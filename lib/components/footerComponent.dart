import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

class footerComponent extends StatefulWidget{
  @override
  footerComponentState createState() => footerComponentState();

}

class footerComponentState extends State<footerComponent> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          //bu kisim degisecek
          child: Row(
            children: <Widget>[
              Container(

                child: IconButton(icon: Image.asset('assets/icons/icon_back.png')),
              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            //alignment: Alignment.bottomRight,
            child: Row(
              children: <Widget>[
                IconButton(icon: Image.asset('assets/icons/icon_share.png'),),
                IconButton(icon: Image.asset('assets/icons/icon_checkmark.png'),),
                IconButton(icon: Image.asset('assets/icons/icon_bookmark.png'),),
                IconButton(icon: Image.asset('assets/icons/icon_more.png'),),
              ],
            ),
          ),
        )
      ],
    );
  }
}