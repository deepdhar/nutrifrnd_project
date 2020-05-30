import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StayHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              title: Center(
                child: Text(
                  "Why You Should Stay Home?",
                  style: TextStyle(
                    fontFamily: 'Philosopher',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              backgroundColor: Colors.teal,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "images/stayhome.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 900,
              delegate: SliverChildListDelegate([
                Container(
                  padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 20.0),
                  color: Colors.black,
                  child: Text(
                    "It is important to understand that even when people appear not to have symptoms of Coronavirus (COVID-19), "
                    "they may still be carrying the virus. When your'e meeting people who aren't from your household, your risk "
                    "of catching coronavirus can increase depending on the situation.\n"
                    "\nYou should take these risks into account when you are thinking about visiting or gathering with "
                    "other people, in particular the time limits where you may be at a higher risk of catching COVID-19"
                    "when spending time with others.\n"
                    "\nThe virus spreads between people in close contact (within 6 feet) through respiratory droplets produced "
                    "when an infected person coughs or sneezes. But the infection can spread before the people develop symptoms, which, on"
                    "average, take around five days to appear. Some people develop no symptoms and others have mild disease but still infect others.nn"
                    "Stepping out also results in contamination of surfaces or objects, from where it can infect people who touch the surface "
                    "and then touch their own mouth, nose or eyes.\n"
                    "\nSocial distancing can be difficult in everyday life. We all need to make changes to the way "
                    "we do things to lower the risk of transmission of the virus. Remember too, your'e not just protecting "
                    "yourself, your'e protecting others who may be vulnerable too.\n"
                    "\n ",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20,
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
