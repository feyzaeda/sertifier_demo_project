import 'package:flutter/material.dart';

class carouselSliderComponentFooterMyList extends StatefulWidget{
  @override
  carouselSliderComponentFooterMyListState createState() => carouselSliderComponentFooterMyListState();
}

class carouselSliderComponentFooterMyListState extends State<carouselSliderComponentFooterMyList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(child: IconButton(icon: Image.asset('assets/icons/icon_bookmark.png'), color: Theme.of(context).iconTheme.color, onPressed: null)),

              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(child: IconButton(icon: Image.asset('assets/icons/icon_checkmark.png'),color: Theme.of(context).iconTheme.color, onPressed: null)),

              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(child: IconButton(icon: Image.asset('assets/icons/icon_share.png'),color: Theme.of(context).iconTheme.color, onPressed: null)),

              ],

            ),
          ),
        ),
      ],
    );
  }
}