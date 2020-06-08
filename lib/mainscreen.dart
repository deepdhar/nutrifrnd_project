import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:url_launcher/url_launcher.dart';
import 'contact.dart';
import 'corona.dart';
import 'stayhome.dart';
import 'card.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['profile', 'email']);

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GoogleSignInAccount _currentUser;
  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount account) {
      setState(() {
        _currentUser = account;
      });
    });
    _googleSignIn.signInSilently();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: _buildBody()),
    );
  }

  Widget _buildBody() {
    if (_currentUser != null) {
      return _signin();
    } //Secondary Main Page
    else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 50.0),
          CircleAvatar(
            backgroundColor: Colors.white30,
            backgroundImage: AssetImage('images/edited.png'),
            radius: 65.0,
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Welcome to",
                style: TextStyle(
                  fontFamily: 'Philosopher',
                  fontSize: 22.0,
                ),
              ),
              Text(
                " nutrifrnd",
                style: TextStyle(
                  fontFamily: 'Philosopher',
                  color: Colors.teal[600],
                  fontSize: 22.0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 150.0,
          ),
          Container(
            child: FlatButton(
              onPressed: _handleSignIn,
              child: Card(
                color: Colors.red[600],
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                child: ListTile(
                  leading: Icon(
                    FontAwesomeIcons.google,
                  ),
                  title: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sign-In with Google',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontFamily: 'SourceSansPro',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    } //SignIn Page
  }

  Widget _signin() {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          ClipRRect(
            child: Container(
              padding: const EdgeInsets.only(
                  top: 25, left: 22, right: 16, bottom: 10),
              child: Column(
                children: <Widget>[
                  ListTile(
                    title: Text(
                      "nutrifrnd",
                      style: TextStyle(
                          letterSpacing: 1,
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: Colors.teal,
                          fontFamily: "Philosopher"),
                    ),
                    trailing: GoogleUserCircleAvatar(
                      identity: _currentUser,
                    ),
                    subtitle: Text(
                      "Your Well Wisher, Your Friend!",
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Philosopher"),
                    ),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  ListTile(
                    title: Text(
                      "Welcome to nutrifrnd,",
                      style: TextStyle(
                          fontWeight: FontWeight.w800,
                          color: Colors.teal,
                          fontSize: 21,
                          fontFamily: "Philosopher"),
                    ),
                    subtitle: Center(
                      child: Text(
                        "Personalized Diet Planning Based on Medical Condition    for Infants & Elders.",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            fontFamily: "Philosopher"),
                      ),
                    ),
                    trailing: Image.asset(
                      "assets/hand.png",
                      color: Color(0xFF32B39B),
                      height: 89,
                      width: 83,
                    ),
                  ),
                  SizedBox(
                    height: 11,
                  ),
                ],
              ),
            ),
          ),
          Cards(),
          Padding(
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 35,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Symptoms",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Philosopher",
                      fontSize: 20,
                      color: Colors.black87),
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: 1,
                      ),
                      SymptomCard(
                        image: "assets/headache.jpeg",
                        title: "Headache",
                        isActive: true,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SymptomCard(
                        image: "assets/cough.webp",
                        title: "Caugh",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SymptomCard(
                        image: "assets/breadth.png",
                        title: "breathing",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SymptomCard(
                        image: "assets/Fever1.png",
                        title: "Fever",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 35,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Precautions",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontFamily: "Philosopher",
                      fontSize: 20,
                      color: Colors.black87),
                ),
                SizedBox(height: 15),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: 1,
                      ),
                      SymptomCard(
                        image: "assets/mask.png",
                        title: "Wear Masks",
                        isActive: true,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SymptomCard(
                        image: "assets/wash.jpg",
                        title: "Wash Hands",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SymptomCard(
                        image: "assets/clean.png",
                        title: "Clean Disinfect",
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      SymptomCard(
                        image: "assets/eat.jpg",
                        title: "Eat Healthy",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 27,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                bottom: 40,
                left: 32,
                right: 32,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(26)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF009688),
                    const Color(0xFF48C0A4),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 27,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, left: 16),
                    child: Text(
                      'Be Safe Be Smart',
                      style: TextStyle(
                        color: Colors.tealAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1.0, left: 16),
                    child: Text(
                      "Call State Helpline at",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      customLaunch("tel:01123978046");
                    },
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: Color(0xFF44BEA3),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 1.0, left: 16),
                        child: Center(
                          child: Text(
                            "1075 or 011-23978046",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                bottom: 40,
                left: 32,
                right: 32,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(26)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF009688),
                    const Color(0xFF48C0A4),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2.0, left: 16),
                    child: Text(
                      'Also Visit',
                      style: TextStyle(
                        color: Colors.tealAccent,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 1.0, left: 16),
                    child: Text(
                      'Fight COVID-19',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            customLaunch('https://www.pmcares.gov.in/en/');
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFF44BEA3),
                            ),
                            padding: const EdgeInsets.all(15),
                            child: Image.asset(
                              "assets/donate.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => CoronaScreen(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFF44BEA3),
                            ),
                            padding: const EdgeInsets.all(15),
                            child: Image.asset(
                              "assets/corona.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => StayHomeScreen(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFF44BEA3),
                            ),
                            padding: const EdgeInsets.all(15),
                            child: Image.asset(
                              "assets/home.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => ContactScreen(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              color: Color(0xFF44BEA3),
                            ),
                            padding: const EdgeInsets.all(15),
                            child: Image.asset(
                              "assets/us.png",
                              width: 30,
                              height: 30,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(
                bottom: 40,
                left: 32,
                right: 32,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(26)),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color(0xFF009688),
                    const Color(0xFF009688),
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 8),
                  FlatButton(
                    onPressed: _handleSignOut,
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        color: const Color(0xFF009688),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 1.0, left: 16),
                        child: Center(
                          child: Text(
                            "SIGN OUT",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  Future<void> _handleSignOut() async {
    _googleSignIn.disconnect();
  }
}

class SymptomCard extends StatelessWidget {
  final String image;
  final String title;
  final bool isActive;
  const SymptomCard({
    Key key,
    this.image,
    this.title,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          isActive
              ? BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 20,
                  color: Colors.black12,
                )
              : BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  color: Colors.black12,
                ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Image.asset(image, height: 90),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: "Philosopher",
            ),
          ),
        ],
      ),
    );
  }
}

void customLaunch(command) async {
  if (await canLaunch(command)) {
    await launch(command);
  } else {
    print('cudnt $command');
  }
}
