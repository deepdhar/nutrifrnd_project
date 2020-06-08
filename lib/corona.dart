import 'package:flutter/material.dart';

class CoronaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.black,
              title: Text(
                '     What is COVID-19?',
                style: TextStyle(
                  fontFamily: 'Philosopher',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
            ),
            Image.asset(
              'assets/covidu.jpg',
            ),
            Column(
              children: <Widget>[
                Container(
                  color: Colors.black,
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.only(top: 10.0, left: 18.0, right: 18.0),
                    title: Text(
                      'Overview',
                      style: TextStyle(
                        fontFamily: 'Philosopher',
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
                      '\nThe best way to prevent and slow down transmission is be well informed about the COVID-19 '
                      'virus, the disease it causes and how it spreads. Protect yourself and others from infection by '
                      'washing your hands or using an alcohol based rub frequently and not touching your face.\n'
                      '\nThe COVID-19 virus spreads primarily through droplets of saliva or discharge from the nose when an infected person'
                      'coughs or sneezes, so it’s important that you also practice respiratory etiquette (for example, by coughing'
                      ' into a flexed elbow).\n'
                      '\nAt this time, there are no specific vaccines or treatments for COVID-19. However, there are '
                      'many ongoing clinical trials evaluating potential treatments. WHO will continue to provide'
                      'updated information as soon as clinical findings become available.\n\n',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.black,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 18.0, right: 18.0),
                    title: Text(
                      'Prevention',
                      style: TextStyle(
                        fontFamily: 'Philosopher',
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      '\nTo prevent infection and to slow transmission of COVID-19, do the following:\n'
                      '\n* Wash your hands regularly with soap and water, or clean them with alcohol-based hand rub.'
                      '\n* Maintain at least 1 metre distance between you and people coughing or sneezing.'
                      '\n* Avoid touching your face.'
                      '\n* Cover your mouth and nose when coughing or sneezing.'
                      '\n* Stay home if you feel unwell.'
                      '\n* Stay home if you feel unwell.'
                      '\n* Practice physical distancing by avoiding unnecessary travel and staying away from large groups of people.\n\n',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
