import 'package:flutter/material.dart';
import 'package:news_app/screen/home/widgets/mainBar.dart';

class DetailsNews extends StatelessWidget {
  static const RouteName = 'DetailsNews';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: MainBar()),
    );
  }
}
