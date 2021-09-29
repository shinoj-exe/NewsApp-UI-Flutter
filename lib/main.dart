import 'package:flutter/material.dart';
import 'screen/config/themes/themes.dart';
import 'screen/detail/detailNews.dart';
import 'screen/home/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themes(),
      debugShowCheckedModeBanner: false,
      routes: {
        DetailsNews.RouteName:(ctx)=> DetailsNews(),
      },
      home: Homepage(),
    );
  }
}
