import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactScreen extends StatefulWidget {
  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundImage: AssetImage('images/contact_logo.jpg'),
                radius: 55.0,
              ),
              Text(
                'Contact Us',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 37.0,
                  color: Colors.grey[800],
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Team OrganiCod3rs',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  fontSize: 22.0,
                  letterSpacing: 1.5,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                  thickness: 2.0,
                ),
              ),
              FlatButton(
                onPressed: _launchURL,
                child: Card(
                  color: Colors.teal,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 13.0),
                    leading: Icon(
                      Icons.email,
                      color: Colors.white70,
                    ),
                    title: Text(
                      'organicod3rs.official@gmail.com',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: 'Source Sans Pro',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade100,
                  thickness: 2.0,
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Card(
                  color: Colors.teal,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 13.0),
                    leading: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white70,
                    ),
                    title: Text(
                      '@nutrifrnd',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontFamily: 'Source Sans Pro',
                      ),
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Card(
                  color: Colors.teal,
                  margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 13.0),
                    leading: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white70,
                    ),
                    title: Text(
                      'Nutri Frnd',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {},
                child: Card(
                  color: Colors.teal,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                  child: ListTile(
                    contentPadding: EdgeInsets.only(left: 13.0),
                    leading: Icon(
                      FontAwesomeIcons.twitter,
                      color: Colors.white70,
                    ),
                    title: Text(
                      '@nutrifrnd',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 18.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _launchURL() async {
    const url =
        'https://mail.google.com/mail/u/0/?tab=rm&ogbl#inbox?compose=new';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
