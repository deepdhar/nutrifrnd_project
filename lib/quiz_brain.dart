import 'questions.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(
        q: 'Do you have any of these health symptoms: Asthma, Diabetes, Chronic Lung Disease, Heart Disease, Pregnancy?'),
    Question(
        q: 'Have you or someone in your family visited any foreign country in the last 14 days?'),
    Question(
        q: 'Have you or someone in your family travelled within India in public transport and came in close contact with someone with cough, cold, fever or shortness of breath?'),
    Question(
        q: 'Have you or any of your family member came in close contact with any COVID-19 patient?'),
    Question(q: 'Do you have Headache?'),
    Question(q: 'Do you have Fever?'),
    Question(q: 'Do you have Cough and Cold?'),
    Question(q: 'Do you have Sore Throat?'),
    Question(q: 'Do you have Shortness of Breath?'),
    Question(
        q: 'Did you put yourself into home quarantine for 14 days after returning from any interstate travel? (Select YES if you didn\'t travel in the last 30 days)'),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

//  bool getCorrectAnswer() {
//    return _questionBank[_questionNumber].questionAnswer;
//  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
