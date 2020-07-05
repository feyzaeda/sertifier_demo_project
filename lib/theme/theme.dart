import 'package:flutter/material.dart';

ThemeData theme(){
  TextTheme _TextTheme(TextTheme base){
    return base.copyWith(
      headline: base.headline.copyWith(
        //fontFamily: 'Schyler',
        fontSize: 22.0,
        color: Colors.grey
      ),
      title: base.title.copyWith(
          //fontFamily: 'Schyler',
          fontSize: 5.0,
          color: Colors.grey
      ),
      body1: base.body1.copyWith(
        fontSize: 16,
        color: Colors.grey
      ),
      body2: base.body2.copyWith(
        fontSize: 14,
        color: Colors.grey
      ),
      caption: base.caption.copyWith(
        fontSize: 10,
        color: Colors.grey
      ),
      subtitle: base.caption.copyWith(
        fontSize: 0.1,
        color: Colors.grey
      ),



    );
  }
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    textTheme: _TextTheme(base.textTheme),
    primaryColor: Colors.white,
    iconTheme: IconThemeData(
      color:  Colors.grey,
      size: 5
    )
  );
}