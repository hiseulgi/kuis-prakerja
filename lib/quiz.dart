import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  // const Quiz({Key key}) : super(key: key);
  List<Map<String, Object>> questions;
  int questionIndex;
  Function answer;

  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.answer});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answerText) {
          return Answer(() => answer(answerText['score']), answerText['text']);
        }).toList(),
      ],
    );
  }
}
