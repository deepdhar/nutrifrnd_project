import 'package:flutter/material.dart';

class StayHomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            AppBar(
              backgroundColor: Colors.teal[400],
              title: Text(
                'Why You Shoud Stay Home?',
                style: TextStyle(
                  fontFamily: 'Philosopher',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
            ),
            Image.asset(
              'assets/stayhome.jpg',
            ),
            Column(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.only(top: 10.0, left: 18.0, right: 18.0),
                    title: Text(
                      'Virus spreads through contact',
                      style: TextStyle(
                        fontFamily: 'Philosopher',
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    subtitle: Text(
                      '\nThe virus spreads between people in close contact (within 6 feet) '
                      'through respiratory droplets produced when an infected person '
                      'coughs or sneezes. But the infection can spread before people develop '
                      'symptoms, which, on an average, take around five days to appear. '
                      'Some people develop no symptoms and others have mild disease but '
                      'still infect others. Stepping out also results in contamination of '
                      'surfaces or objects, from where it can infect people who touch the '
                      'surface and then touch their own mouth, nose, or eyes. The virus '
                      'spreads very easily in areas where there is community transmission of '
                      'the disease, according to the Centers for Disease Control and Prevention in US.\n\n',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.only(top: 0.0, left: 15.0, right: 15.0),
                    title: Text(
                      'Infection may occur without close contact',
                      style: TextStyle(
                        fontFamily: 'Philosopher',
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: Colors.black54,
                      ),
                    ),
                    subtitle: Text(
                      '\nScientists have documented a cluster of cases among people who '
                      'worked in shops, visitors or were staff of a mall without direct contact '
                      'with an infected person, according to a research document called '
                      '“Indirect Virus Transmission in Cluster of Covid-19 Cases, Wenzhou” '
                      'in China published by the CDC on March 12. Indirect transmission '
                      'may have happened among these unrelated cases from spread via '
                      'surfaces like elevator buttons or restroom taps, said the paper. For '
                      'case-patients who were customers in the shopping mall but did not '
                      'report using the restroom, the source of infection could have been the elevators or asymptomatic patients.\n\n',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'Source Sans Pro',
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 18.0, right: 18.0),
                    title: Text(
                      'Lockdown greatly reduces transmission',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Philosopher',
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    subtitle: Text(
                      '\nA recent study by the Imperial College London’s Covid-19 team found '
                      'that population-wide social distancing would have the largest impact '
                      'in transmission reduction; and, in combination with other interventions, '
                      'such as home isolation of infected people and closure of schools and universities. '
                      'There are many more scientific studies that prove massive social distancing measures can stabilise '
                      'transmission and give governments time to prepare for a spurt in infections.\n\n',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 18.0, right: 18.0),
                    title: Text(
                      'Lockdown helped China control the pandemic',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Philosopher',
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    subtitle: Text(
                      '\nChina enforced similar lockdowns in phases with far more stringency for over two months. '
                      'Along with massive lockdowns, electronic surveillance was used in China to track people’s movements. '
                      'Some 760 million people, roughly half the country’s population, were confined to their homes. '
                      'A World Health Organization report recently concluded that the cordon sanitaire (restriction on movement of people) '
                      'around Wuhan and neighbouring municipalities effectively ended infected people travelling to the rest of the country. '
                      'The team noted a steep decline in new infections because of the lockdown. '
                      'China’s model has been replicated in Italy, in the US’ New York, Los Angeles and Chicago, the United Kingdom, France, Italy, Spain and other European countries. '
                      'They have all ordered people to stay at home, threatening them with fines in some cases.\n\n',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 18.0, right: 18.0),
                    title: Text(
                      'Lockdown helps Governments track and trace',
                      style: TextStyle(
                        fontSize: 22.0,
                        fontFamily: 'Philosopher',
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                    ),
                    subtitle: Text(
                      '\nTo contain spread, governments must identify infected cases and isolate them and their close contacts before they step out and infect '
                      'many others in the community, as it happened in the case of the Sikh granthi who travelled to around 20 villages and put a large number of '
                      'people at risk of infection before he was diagnosed with the Covid-19. Tracking and quarantining is done through continuous surveillance, '
                      'which is possible during a lockdown. The lockdown also prevents undiagnosed infected people from travelling and further spreading '
                      'the infection. The government can also use this time to build health infrastructure, source ventilators, medicines and personal protection '
                      'equipment like masks and gloves for healthcare workers, train healthcare workers in treatment and infection-control, and accelerate '
                      'vaccine and diagnostic development for Covid-19 patients.\n\n',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.black,
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
