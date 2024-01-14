import 'package:assingnment14/Qusestion/quiz_brain.dart';
import 'package:assingnment14/Qusestion/result.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizlerApp extends StatefulWidget {
  const QuizlerApp({Key? key}) : super(key: key);

  @override
  State<QuizlerApp> createState() => _QuizlerAppState();
}

class _QuizlerAppState extends State<QuizlerApp> {
  List<Icon> scoreKeeper = [];

  Result result = Result();
  int correctCount = 0;
  int wrongCount = 0;

  void checkAnswer(bool pickedAnswer) {
    setState(() {

      // we use another conditional statement because of the last answer of the last question
      //if we don't use this conditional the last answer will be omitted
    if(quiz.getQuestionNumber() == 12){
      bool correctAnswer = quiz.getQuestionAnswer();
      if (correctAnswer == pickedAnswer) {
        scoreKeeper.add(const Icon(Icons.check, color: Colors.green));
        ++correctCount;
      } else {
        scoreKeeper.add(const Icon(
          Icons.close,
          color: Colors.red,
        ));
        ++wrongCount;
      }
    }

      //first get the correct answer
      bool correctAnswer = quiz.getQuestionAnswer();

    //then check
      if (quiz.isFinished()) {
        result.setCorrectCount(correctCount);
        result.setWrongCount(wrongCount);

        Alert(
                context: context,
                title: "Result",
                desc:
                    "Correct: ${result.getCorrectCount()}\nWrong: ${result.getWrongCount()}.")
            .show();

        quiz.reset();
        scoreKeeper = [];
        correctCount = 0;
        wrongCount = 0;
      } else {
        if (correctAnswer == pickedAnswer) {
          scoreKeeper.add(const Icon(Icons.check, color: Colors.green));
          ++correctCount;
        } else {
          scoreKeeper.add(const Icon(
            Icons.close,
            color: Colors.red,
          ));
          ++wrongCount;
        }
      }
    });

    quiz.nextQuestion();
  }

  QuizBrain quiz = QuizBrain();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  quiz.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
              margin: const EdgeInsets.all(10),
              child: MaterialButton(
                onPressed: () {
                  checkAnswer(true);
                },
                color: Colors.green,
                child: const Text(
                  "درست است",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Container(
              height: 70,
              margin: const EdgeInsets.only(right: 10, left: 10, top: 10),
              child: MaterialButton(
                onPressed: () {
                  checkAnswer(false);
                },
                color: Colors.red,
                child: const Text(
                  "غلط است",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: scoreKeeper,
              ),
            )
          ],
        ),
      ),
    );
  }
}
