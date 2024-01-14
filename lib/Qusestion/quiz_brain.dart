import "package:assingnment14/Qusestion/question.dart";
import "package:flutter/widgets.dart";

class QuizBrain {
  int _questionNumber = 0;

  final List<Question> _questionBank = [

    Question(
        ' نماز عصر 4 رکعت است',
        true),
    Question(
        'نماز صیح 2 رکعت است',
        false),
    Question(
        'حکم نماز استخاره مستحب است',
        true),
    Question('حکم نماز استخاره واجب است', true),

  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      ++_questionNumber;
      debugPrint(" next $_questionNumber");
    }
  }

  String getQuestionText() {
    debugPrint("got question number: $_questionNumber");
    return _questionBank[_questionNumber].questionText!;
  }

  bool getQuestionAnswer() {
    debugPrint("got answer number: $_questionNumber");
    return _questionBank[_questionNumber].questionAnswer!;
  }

  int getQuestionNumber() {
    debugPrint("got index: $_questionNumber");
    return _questionNumber;
  }

  bool isFinished() {
    debugPrint("Check the number: $_questionNumber");
    return _questionNumber == _questionBank.length - 1;
  }

  void reset() {
    _questionNumber = -1;
    debugPrint("after reset number is: $_questionNumber");
  }
}
