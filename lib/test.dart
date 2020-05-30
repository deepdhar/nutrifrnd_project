import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text(
          'COVID-19 Test',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
        child: Test(),
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
                  'Go Back',
                  style: TextStyle(fontFamily: 'Source Sans Pro', fontSize: 18),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ]).show();
      } else if (yes == 0) {
        Alert(
            context: context,
            title: 'Test Finished!',
            desc: 'You are safe and have no risk of COVID-19',
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
                  color: Colors.black,
                  fontFamily: 'Source Sans Pro',
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
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
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
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
        Row(
          children: scoreKeeper,
        )
      ],
    );
  }
}
