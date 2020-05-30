import 'package:flutter/material.dart';

class StayHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Why You Shoudl Stay Home?"),
            backgroundColor: Colors.deepPurple,
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset("assets/stayhome.jpg",fit: BoxFit.cover,),
            ),
          )
        ],
      ),
    );
  }
}
