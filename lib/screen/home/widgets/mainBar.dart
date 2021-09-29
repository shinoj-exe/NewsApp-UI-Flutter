
import 'package:flutter/material.dart';
import 'package:news_app/screen/config/var/var.dart' as configvar;


class MainBar extends StatelessWidget {
  const MainBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: Image.network(configvar.newsPaperImage),
        ),
              Container(
        width:screenWidth*0.8 ,
        padding: EdgeInsets.only(left:8),
        child: Text("This is an awesome car with 2000 HP",style: Theme.of(context).primaryTextTheme.headline5,maxLines: 3,)
        ),
                  const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 24,
                    backgroundImage: NetworkImage(configvar.profileImage),
                  ),
                  const SizedBox(width: 10),
                  Text("John Smith",
                      style: Theme.of(context).textTheme.bodyText1),
                ],
              ),
              Text("23 Sep,2021", style: Theme.of(context).textTheme.bodyText1),
            ],
          )
      ],
    );
  }
}
