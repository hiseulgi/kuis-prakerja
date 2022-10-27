// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  // const Result({Key key}) : super(key: key);
  int totalScore;
  Function reset;

  Result(this.totalScore, this.reset);

  String get resultPhrase {
    String resultText;
    if (totalScore > 16) {
      resultText = 'Wow energi kamu luar biasa!';
    } else if (totalScore > 13) {
      resultText = 'Keren banget';
    } else if (totalScore > 9) {
      resultText = 'Hmm... Lumayan juga ya kamu';
    } else {
      resultText = 'Sepi banget ya hidupmu';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total Score: $totalScore',
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: ElevatedButton(
              onPressed: reset,
              child: const Text('Restart Quiz'),
            ),
          )
        ],
      ),
    );
  }
}
