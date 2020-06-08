import 'dietplan.dart';
import 'quiz.dart';
import 'package:flutter/material.dart';
import "package:rflutter_alert/rflutter_alert.dart";

QuizBrain quizBrain = QuizBrain();

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        backgroundColor: Color(0xFF44BEA3),
        appBar: AppBar(
          backgroundColor: Color(0xFF44BEA3),
          title: Text(
            '        COVID-19 Test',
            style: TextStyle(
                letterSpacing: 1,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: "Philosopher"),
          ),
        ),
        body: SafeArea(
          child: Test(),
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  void checkAnswer(bool userPickedAnswer) {
    if (quizBrain.isFinished() == true) {
      if (yes > 0 && yes <= 5) {
        Alert(
            context: context,
            title: 'Test Finished!',
            desc:
                'You have low risk of COVID-19. Self-Quarantine yourself and visit a doctor if you don\'t feel well.',
            buttons: [
              DialogButton(
                color: Colors.orange,
                child: Text(
                  'Go Back',
                  style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 18),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ]).show();
      } else if (yes > 5) {
        Alert(
            context: context,
            title: 'Test Finished!',
            desc: 'You have high risk of COVID-19. Please visit a doctor ASAP.',
            buttons: [
              DialogButton(
                color: Colors.orange,
                child: Text(
                  'Call Helpline',
                  style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 18),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ]).show();
      } else {
        Alert(
            context: context,
            title: 'Test Finished!',
            desc: 'You are safe and have no risk of COVID-19',
            buttons: [
              DialogButton(
                color: Colors.orange,
                child: Text(
                  'You Can Follow This Diet',
                  style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 18),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => DietPage(),
                    ),
                  );
                },
              ),
            ]).show();
      }
      quizBrain.reset();
    }
  }

  int yes = 0;
  int no = 0;

  List<Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                quizBrain.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontFamily: 'Source Sans Pro',
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xFF44BEA3),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 2),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                  textColor: Colors.white,
                  color: Color(0xFF44BEA3),
                  child: Text(
                    'Yes',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontFamily: 'Basic',
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      quizBrain.nextQuestion();
                    });
                    yes++;
                    checkAnswer(true);
                  },
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(0, 2),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Expanded(
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
                  color: Colors.red,
                  child: Text(
                    'No',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontFamily: 'Basic',
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      quizBrain.nextQuestion();
                    });
                    no++;
                    checkAnswer(true);
                  },
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
