import 'package:flutter/material.dart';
import 'package:news_app/screen/home/widgets/customTile.dart';

class RecentNews extends StatelessWidget {
  const RecentNews({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (BuildContext context, int index) {
          return CustomTile(screenWidth: screenWidth);
        },
      ),
    );
  }
}
