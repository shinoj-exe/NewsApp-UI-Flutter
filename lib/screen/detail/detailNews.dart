import 'package:flutter/material.dart';
import 'package:news_app/screen/home/widgets/mainBar.dart';

class DetailsNews extends StatelessWidget {
  static const RouteName = 'DetailsNews';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.share,color: Colors.black,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(Icons.share,color: Colors.black,),
        )],
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();
        },icon: Icon(Icons.arrow_back_ios),color: Colors.black,),
      ),
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MainBar(),
              const SizedBox(height: 10,),
              Text("Data"),
            ],
          ),
        ),
      )),
    );
  }
}
