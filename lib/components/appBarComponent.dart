//feedPage page2 page3 de kullanilacak appbar

import 'package:flutter/material.dart';

class appBarComponent extends StatefulWidget {
  @override
  appBarComponentState createState() => appBarComponentState();
}

class appBarComponentState extends State<appBarComponent> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: new Center(
          child: Column(
        children: <Widget>[
          Text(
            "Feed",
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
            ),
          ),
          Image.asset('assets/icons/icon_coloredline.png')
        ],
      )),
      actions: <Widget>[
        IconButton(
            icon: Image.asset('assets/icons/icon_search.png'),
            color: Theme.of(context).iconTheme.color,
            onPressed: null)
      ],
    );
  }
}
