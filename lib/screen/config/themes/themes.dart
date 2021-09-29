import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

ThemeData themes() {
  return ThemeData(
    primarySwatch: Colors.blue,
    textTheme: TextTheme(
      bodyText1: TextStyle(color: Colors.black45)
    ),
    primaryTextTheme: TextTheme(
      headline4: TextStyle(color: Colors.blueGrey),
      headline3: TextStyle(color: Colors.blueGrey,fontWeight: FontWeight.w600),
      headline6: TextStyle(color: Colors.blueGrey,),
      headline5: TextStyle(color: Colors.blueGrey),
      bodyText1: TextStyle(color: Colors.blueGrey)
      )
  );
}
