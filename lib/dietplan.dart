import 'package:flutter/material.dart';
import 'day1.dart';
import 'day2.dart';
import 'day3.dart';
import 'day4.dart';
import 'day5.dart';
import 'day6.dart';
import 'day7.dart';

class DietPage extends StatefulWidget {
  @override
  _DietPageState createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF009688),
        title: Text(
          "      7 Day Quarintine Plan",
          style:
              TextStyle(fontFamily: "Philosopher", fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              child: new FittedBox(
                child: Material(
                    color: Colors.white,
                    elevation: 14.0,
                    borderRadius: BorderRadius.circular(24.0),
                    shadowColor: Color(0x802196F3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 60),
                            child: myDetailsContainer8(),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Day1(),
                  ),
                );
              },
              child: Container(
                child: new FittedBox(
                  child: Material(
                      color: Colors.white,
                      elevation: 15.0,
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Color(0xFF44BEA3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 16.0),
                                child: myDetailsContainer1(),
                              ),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 140,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                fit: BoxFit.contain,
                                alignment: Alignment.centerRight,
                                image: AssetImage("assets/honey.jpg"),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Day2(),
                  ),
                );
              },
              child: Container(
                child: new FittedBox(
                  child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Color(0xFF44BEA3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: myDetailsContainer2(),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 140,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                fit: BoxFit.contain,
                                alignment: Alignment.topRight,
                                image: AssetImage("assets/fruits.jpg"),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Day3(),
                  ),
                );
              },
              child: Container(
                child: new FittedBox(
                  child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Color(0xFF44BEA3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: myDetailsContainer3(),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 140,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                fit: BoxFit.contain,
                                alignment: Alignment.topRight,
                                image: AssetImage("assets/milk.jpg"),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Day4(),
                  ),
                );
              },
              child: Container(
                child: new FittedBox(
                  child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Color(0xFF44BEA3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: myDetailsContainer4(),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 140,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                fit: BoxFit.contain,
                                alignment: Alignment.topRight,
                                image: AssetImage("assets/chapatti.jpg"),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Day5(),
                  ),
                );
              },
              child: Container(
                child: new FittedBox(
                  child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Color(0x802196F3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: myDetailsContainer5(),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 140,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                fit: BoxFit.contain,
                                alignment: Alignment.topRight,
                                image: AssetImage("assets/eggs.jpg"),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Day6(),
                  ),
                );
              },
              child: Container(
                child: new FittedBox(
                  child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Color(0x802196F3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: myDetailsContainer6(),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 140,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                fit: BoxFit.contain,
                                alignment: Alignment.topRight,
                                image: AssetImage("assets/almonds.jpg"),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Day7(),
                  ),
                );
              },
              child: Container(
                child: new FittedBox(
                  child: Material(
                      color: Colors.white,
                      elevation: 14.0,
                      borderRadius: BorderRadius.circular(24.0),
                      shadowColor: Color(0x802196F3),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: myDetailsContainer7(),
                            ),
                          ),
                          Container(
                            width: 350,
                            height: 140,
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(24.0),
                              child: Image(
                                fit: BoxFit.contain,
                                alignment: Alignment.topRight,
                                image: AssetImage("assets/apri.jpg"),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget myDetailsContainer8() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 88),
          child: Container(
              child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "  7-day quarantine meal plan to survive this quarantine",
                style: TextStyle(
                    color: Colors.teal,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Philosopher"),
              ),
            ),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "Follow this Weekly",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Philosopher"),
              )),
            ],
          )),
        ),
        Container(
            child: Text(
          "",
          style: TextStyle(
              color: Colors.black54,
              fontSize: 9.0,
              fontWeight: FontWeight.bold),
        )),
      ],
    );
  }

  Widget myDetailsContainer1() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 88),
          child: Container(
              child: Text(
            "DAY 1",
            style: TextStyle(
                color: Colors.teal,
                fontSize: 29.0,
                fontWeight: FontWeight.bold,
                fontFamily: "Philosopher"),
          )),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 98),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "Honey,\n"
                "Ginger..",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Philosopher"),
              )),
            ],
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer2() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 88),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Day2(),
                ),
              );
            },
            child: Container(
                child: Text(
              "DAY 2",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 29.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Philosopher"),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 106),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "Fruits,\n"
                "Eggs..",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Philosopher"),
              )),
            ],
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer3() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 101),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Day3(),
                ),
              );
            },
            child: Container(
                child: Text(
              "DAY 3",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 29.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Philosopher"),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 90.0),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "Milk,\n"
                "Tulsi Tea...",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Philosopher"),
              )),
            ],
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer4() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 98),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Day4(),
                ),
              );
            },
            child: Container(
                child: Text(
              "DAY 4",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 29.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Philosopher"),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 70.0),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "Chapatti, \n"
                "Poha/Upma...",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Philosopher"),
              )),
            ],
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer5() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 80),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Day5(),
                ),
              );
            },
            child: Container(
                child: Text(
              "DAY 5",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 29.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Philosopher"),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 34.0),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "Eggs,\n"
                "Egg Omelette...",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 19.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Philosopher"),
              )),
            ],
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer6() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 88),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Day6(),
                ),
              );
            },
            child: Container(
                child: Text(
              "DAY 6",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 29.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Philosopher"),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 85.0),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "Almonds,\n"
                "Nuts...",
                style: TextStyle(
                  fontFamily: "Philosopher",
                  color: Colors.black54,
                  fontSize: 19.0,
                  fontWeight: FontWeight.bold,
                ),
              )),
            ],
          )),
        ),
      ],
    );
  }

  Widget myDetailsContainer7() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right: 88),
          child: GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => Day7(),
                ),
              );
            },
            child: Container(
                child: Text(
              "DAY 7",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 29.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Philosopher"),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 65.0),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  child: Text(
                "Porridge,\n"
                "Dry Fruits...",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Philosopher"),
              )),
            ],
          )),
        ),
      ],
    );
  }
}
