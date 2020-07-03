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
          child: IconButton(
            icon: Image.asset('assets/icons/icon_back.png'),
          ),
        ),
        Expanded(
          child: IconButton(
            icon: Image.asset('assets/icons/icon_share.png'),
          ),
        ),
        Expanded(
          child: IconButton(
            icon: Image.asset('assets/icons/icon_checkmark.png'),
          ),
        ),
        Expanded(
          child: IconButton(
            icon: Image.asset('assets/icons/icon_bookmark.png'),
          ),
        ),
        Expanded(
          child: IconButton(
            icon: Image.asset('assets/icons/icon_more.png'),
          ),
        )
      ],
    );
  }
}