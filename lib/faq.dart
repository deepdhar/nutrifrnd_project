import 'package:flutter/material.dart';

class FAQ extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF44BEA3),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 5,
          ),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SafeArea(
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "COVID-19 FAQ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: "Philosopher",
                            fontSize: 22,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 170),
                Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(
                          width: 1,
                        ),
                        FaqCard(
                          image: "images/faq1.png",
                          isActive: true,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        FaqCard(
                          image: "images/faq2.png",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        FaqCard(
                          image: "images/faq3.png",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        FaqCard(
                          image: "images/faq4.png",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        FaqCard(
                          image: "images/faq5.png",
                          isActive: true,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        FaqCard(
                          image: "images/faq6.png",
                          isActive: true,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        FaqCard(
                          image: "images/faq7.png",
                          isActive: true,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        FaqCard(
                          image: "images/faq8.png",
                          isActive: true,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        FaqCard(
                          image: "images/faq9.png",
                          isActive: true,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        FaqCard(
                          image: "images/faq10.png",
                          isActive: false,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FaqCard extends StatelessWidget {
  final String image;
  final bool isActive;
  const FaqCard({
    Key key,
    this.image,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xFF44BEA3),
        boxShadow: [
          isActive
              ? BoxShadow(
                  offset: Offset(0, 10),
                  blurRadius: 20,
                  color: Colors.black26,
                )
              : BoxShadow(
                  offset: Offset(0, 3),
                  blurRadius: 6,
                  color: Colors.black26,
                ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Image.asset(image, height: 350),
        ],
      ),
    );
  }
}
