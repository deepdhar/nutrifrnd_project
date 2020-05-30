import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:url_launcher/url_launcher.dart';
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
    int i;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffE9E9E9),
//      bottomNavigationBar: ClipRRect(
////        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
////        child: BottomNavigationBar(
////          iconSize: 29,
////          selectedIconTheme: IconThemeData(color: Colors.teal),
////          unselectedIconTheme: IconThemeData(
////            color: Colors.black26,
////          ),
////          items: [
////            BottomNavigationBarItem(
////              icon: Padding(
////                padding: const EdgeInsets.all(8.0),
////                child: Container(
////                  child: Icon(
////                    Icons.home,
////                  ),
////                ),
////              ),
////              title: Text(
////                'home',
////                style: TextStyle(color: Colors.white),
////              ),
////            ),
////            BottomNavigationBarItem(
////              icon: Padding(
////                padding: const EdgeInsets.all(8.0),
////                child: Icon(
////                  Icons.search,
////                ),
////              ),
////              title: Text(
////                'searcg'
////                'search',
////                style: TextStyle(color: Colors.white),
////              ),
////            ),
////            BottomNavigationBarItem(
////              icon: Padding(
////                padding: const EdgeInsets.all(8.0),
////                child: Container(
////                  child: Icon(
////                    Icons.person,
////                  ),
////                ),
////              ),
////              title: Text(
////                'profile',
////                style: TextStyle(color: Colors.white),
////              ),
////            ),
////          ],
////        ),
//          ),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            height: height * 0.32,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(40)),
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.only(
                    top: 41, left: 22, right: 16, bottom: 10),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Text(
                        "nutrifrnd",
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w800,
                            color: Colors.teal,
                            fontFamily: "Philosopher"),
                      ),
                      trailing: Container(
                        child: GoogleUserCircleAvatar(
                          identity: _currentUser,
                        ),
                      ),
                      subtitle: Text(
                        "Your Well Wisher, Your Friend!",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.black54,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Philosopher"),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      title: Text(
                        "Welcome to nutrifrnd,",
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            color: Colors.teal,
                            fontSize: 25,
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
                        "images/icon.jpg",
                        height: 89,
                        width: 83,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: height * 0.33,
            left: 0,
            right: 0,
            height: height * 0.53,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 8,
                      left: 32,
                      right: 16,
                    ),
                    child: Text("ACTIVITIES",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 15,
                          color: Colors.black54,
                        )),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            width: 32,
                          ),
                          for (i = 0; i < meals.length; i++)
                            _MealCard(
                              meal: meals[i],
                            )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 32,
                    height: 10,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 10,
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
                            height: 20,
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
                            height: 15,
                          ),
                          Row(
                            children: <Widget>[
                              SizedBox(
                                width: 18,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xFF44BEA3),
                                ),
                                padding: const EdgeInsets.all(19),
                                child: Image.asset(
                                  "images/donate.png",
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xFF44BEA3),
                                ),
                                padding: const EdgeInsets.all(19),
                                child: Image.asset(
                                  "images/corona.png",
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xFF44BEA3),
                                ),
                                padding: const EdgeInsets.all(19),
                                child: Image.asset(
                                  "images/home.png",
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Color(0xFF44BEA3),
                                ),
                                padding: const EdgeInsets.all(19),
                                child: Image.asset(
                                  "images/us.png",
                                  width: 30,
                                  height: 30,
                                ),
                              ),
                              SizedBox(
                                width: 18,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0, bottom: 0.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        RaisedButton(
                          color: Colors.teal[400],
                          onPressed: _handleSignOut,
                          child: Text('SIGN OUT'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

//  Widget _signin() {
//
//    return Column(
//      mainAxisSize: MainAxisSize.max,
//      children: <Widget>[
//        Container(
//          color: Colors.grey[900],
//          child: Column(
//            children: <Widget>[
//              ListTile(
//                leading: GoogleUserCircleAvatar(
//                  identity: _currentUser,
//                ),
//                title: Text(
//                  'Hello, ',
//                  style: TextStyle(
//                    fontSize: 16.0,
//                    fontWeight: FontWeight.bold,
//                    color: Colors.white,
//                  ),
//                ),
//                subtitle: Text(
//                  _currentUser.displayName ?? '',
//                  style: TextStyle(
//                      fontFamily: 'OleoScript',
//                      fontSize: 17.0,
//                      color: Colors.grey),
//                ),
//              ),
//              Padding(
//                padding: const EdgeInsets.only(right: 10.0, bottom: 10.0),
//                child: Row(
//                  mainAxisAlignment: MainAxisAlignment.end,
//                  children: <Widget>[
//                    RaisedButton(
//                      color: Colors.teal[400],
//                      onPressed: _handleSignOut,
//                      child: Text('SIGN OUT'),
//                    ),
//                  ],
//                ),
//              ),
//            ],
//          ),
//        ), //SignOut Button
//        SizedBox(height: 80.0),
//        Container(
//          child: FlatButton(
//            onPressed: () {
//              Navigator.push(
//                context,
//                MaterialPageRoute(builder: (context) => TestPage()),
//              );
//            },
//            child: Card(
//              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//              color: Colors.pink[600],
//              child: ListTile(
//                title: Center(
//                  child: Text(
//                    'Take a Test',
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontFamily: 'Basic',
//                      fontSize: 18.0,
//                    ),
//                  ),
//                ),
//              ),
//            ),
//          ),
//        ), //Explore Button
//        Container(
//          child: FlatButton(
//            onPressed: _launchURL,
//            child: Card(
//              margin: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
//              color: Colors.pink[600],
//              child: ListTile(
//                title: Center(
//                  child: Text(
//                    'Get Your Diet Plan',
//                    style: TextStyle(
//                      color: Colors.white,
//                      fontSize: 18.0,
//                      fontFamily: 'Basic',
//                    ),
//                  ),
//                ),
//              ),
//            ),
//          ),
//        )
//      ],
//    );
//  }

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

  _launchURL() async {
    const url = 'https://bit.ly/nutrifrnds';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}

class _MealCard extends StatelessWidget {
  final Meal meal;

  const _MealCard({Key key, @required this.meal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        right: 20,
        bottom: 10,
      ),
      child: Material(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  child: Image.asset(
                    meal.imagepath,
                    width: 150,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      meal.mealTime,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      meal.timetaken,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
