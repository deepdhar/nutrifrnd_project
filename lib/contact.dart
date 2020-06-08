import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatelessWidget {
  void customLaunch(command) async {
    if (await canLaunch(command)) {
      await launch(command);
    } else {
      print('couldn\'t $command');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Color(0xFF44BEA3),
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/orga.png",
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 548,
            delegate: SliverChildListDelegate([
              Container(
                color: Color(0xFF44BEA3),
                child: Column(
                  children: <Widget>[
                    FlatButton(
                      onPressed: () {
                        customLaunch(
                            'mailto:organicod3rs@gmail.com?subject=&body=');
                      },
                      child: Card(
                        color: Color(0xFF1CA793),
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 5.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.only(left: 13.0),
                          leading: Icon(
                            Icons.email,
                            color: Colors.white70,
                          ),
                          title: Text(
                            'organicod3rs@gmail.com',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.0,
                              fontFamily: 'Source Sans Pro',
                            ),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        customLaunch(
                            'https://instagram.com/nutrifrnd?igshid=1wjllg391woik');
                      },
                      child: Card(
                        color: Color(0xFF1CA793),
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 5.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.only(left: 13.0),
                          leading: Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white70,
                          ),
                          title: Text(
                            '@OrganiCod3rs',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontFamily: 'Source Sans Pro',
                            ),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {
                        customLaunch("https://mobile.twitter.com/OCod3rs");
                      },
                      child: Card(
                        color: Color(0xFF1CA793),
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.only(left: 13.0),
                          leading: Icon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white70,
                          ),
                          title: Text(
                            '@OrganiCod3rs',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    FlatButton(
                      onPressed: () {},
                      child: Card(
                        color: Color(0xFF1CA793),
                        margin: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 5.0),
                        child: ListTile(
                          contentPadding: EdgeInsets.only(left: 13.0),
                          leading: Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white70,
                          ),
                          title: Text(
                            '@OrganiCod3rs',
                            style: TextStyle(
                              fontFamily: 'Source Sans Pro',
                              fontSize: 16.0,
                              color: Colors.white,
                            ),
                          ),
                          trailing: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
