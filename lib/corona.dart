import 'package:flutter/material.dart';

class CoronaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.teal,
              title: Center(
                child: Text(
                  'What is COVID-19?',
                  style: TextStyle(
                    fontFamily: 'Philosopher',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
            Image.asset(
              'images/corona.jpg',
            ),
            Container(
              color: Colors.black,
              child: ListTile(
                contentPadding:
                    EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
                title: Text(
                  'Description',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                subtitle: Text(
                  '\nCoronavirus disease (COVID-19) is an infectious disease caused by a newly discovered coronavirus.'
                  ' Most of the people infected with the COVID-19 virus will experience mild to moderate respiratory illness and recover without'
                  ' requiring special treatment. Older people and those with underlying medical problems like cardiovascular disease, diabetes,'
                  ' chronic respiratory disease, and cancer are more likely to develop serious illness.\n'
                  '\nThe COVID-19 virus spreads primarily through droplets of saliva or discharge from the nose when an infected person'
                  'coughs or sneezes, so it’s important that you also practice respiratory etiquette (for example, by coughing'
                  ' into a flexed elbow).\n',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 22.0,
                    color: Colors.white70,
                  ),
                ),
              ),
            ),
          ],
//          slivers: <Widget>[
//            SliverAppBar(
//              title: Center(
//                child: Text(
//                  'What is Coronavirus?',
//                  style: TextStyle(
//                    fontFamily: 'Philosopher',
//                    fontWeight: FontWeight.bold,
//                    color: Colors.white,
//                  ),
//                ),
//              ),
//              backgroundColor: Colors.teal,
//              expandedHeight: 230,
//              flexibleSpace: FlexibleSpaceBar(
//                background: Image.asset(
//                  'images/corona.jpg',
//                  fit: BoxFit.cover,
//                ),
//              ),
//            ),
//
//          ],
        ),
      ),
    );
  }
}
