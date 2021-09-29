import 'package:flutter/material.dart';
import '../../config/var/var.dart' as configvar;

class CustomTile extends StatelessWidget {
  const CustomTile({
    Key? key,
    required this.screenWidth,
  }) : super(key: key);

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: 10, horizontal: 10),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 100,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  configvar.newsPaperImage,
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  width: screenWidth * 0.5,
                  child: Text(
                    "This is just a little way to create flutter",
                    style: Theme.of(context)
                        .primaryTextTheme
                        .bodyText1!
                        .merge(
                          TextStyle(fontWeight: FontWeight.w600),
                        ),
                  )),
              const SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconText(iconData: Icons.calendar_today,title: 'Jan 10,2021',),
                  SizedBox(
                    width: 20,
                  ),
                  IconText(iconData: Icons.lock_clock,title: '10 min Read',),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final IconData iconData;
  final String title;

  IconText({required this.iconData,required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData,size: 17,),
        const SizedBox(width: 6,),
        Text(title, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}