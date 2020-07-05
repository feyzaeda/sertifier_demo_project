//feed ile ayni appBar ve footera sahip bos sayfa

import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/components/appBarComponent.dart';

class page3 extends StatefulWidget {
  @override
  page3State createState() => page3State();
}

class page3State extends State<page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Expanded(
              child: appBarComponent(),
            )
          ],
        ),
      ),
    );
  }
}
