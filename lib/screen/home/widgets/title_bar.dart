import 'package:flutter/material.dart';
import 'package:news_app/screen/config/var/var.dart' as configvar;
import 'package:news_app/screen/detail/detailNews.dart';
import 'package:news_app/screen/home/widgets/mainBar.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Breaking News",
            style: Theme.of(context).primaryTextTheme.headline3,
          ),
          const SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(DetailsNews.RouteName);
              },
              child: MainBar()),
          const SizedBox(
            height: 10,
          ),

        ],
      ),
    );
  }
}
