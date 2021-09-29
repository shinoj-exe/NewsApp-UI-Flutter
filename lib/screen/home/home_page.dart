import 'package:flutter/material.dart';
import 'widgets/categoryList.dart';
import 'widgets/custom_appbar.dart';
import 'widgets/recentNews.dart';
import 'widgets/title_bar.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBar(),
            TitleBar(screenWidth: screenWidth),
            CategoryList(),
            RecentNews(screenWidth: screenWidth),
          ],
        ),
      ),
    );
  }
}




