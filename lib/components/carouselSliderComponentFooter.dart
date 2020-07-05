import 'package:flutter/material.dart';

class carouselSliderComponentFooter extends StatefulWidget{
  @override
  carouselSliderComponentFooterState createState() => carouselSliderComponentFooterState();

}

class carouselSliderComponentFooterState extends State<carouselSliderComponentFooter> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(child: IconButton(icon: Image.asset('assets/icons/icon_bookmark.png'), onPressed: null)),
                Expanded(child: Text("Bookmark"))
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(child: IconButton(icon: Image.asset('assets/icons/icon_checkmark.png'), onPressed: null)),
                Expanded(child: Text("Mark as read"))
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(child: IconButton(icon: Image.asset('assets/icons/icon_share.png'), onPressed: null)),
                Expanded(child: Text("Share"))
              ],

            ),
          ),
        ),
      ],
    );
  }
}