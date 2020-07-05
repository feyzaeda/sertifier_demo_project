import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:sertifier_demo_project/screens/feedPage.dart';

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
                child: IconButton(icon: Image.asset('assets/icons/icon_back.png',color: Theme.of(context).iconTheme.color),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> feedPage()));
                  },),

              ),
            ],
          ),
        ),
        Expanded(
          child: Container(
            //alignment: Alignment.bottomRight,
            child: Row(
              children: <Widget>[
                IconButton(icon: Image.asset('assets/icons/icon_share.png',color: Theme.of(context).iconTheme.color),),
                IconButton(icon: Image.asset('assets/icons/icon_checkmark.png',color: Theme.of(context).iconTheme.color),),
                IconButton(icon: Image.asset('assets/icons/icon_bookmark.png',color: Theme.of(context).iconTheme.color),),
                IconButton(icon: Image.asset('assets/icons/icon_more.png',color: Theme.of(context).iconTheme.color),),
              ],
            ),
          ),
        )
      ],
    );
  }
}