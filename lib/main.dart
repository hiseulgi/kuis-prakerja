import 'package:flutter/material.dart';
import 'package:kuis_prakerja/result.dart';
import 'quiz.dart';
import 'result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var totalScore = 0;

  // var questions = [
  //   {
  //     'question': 'Siapa nama bapak Naruto?',
  //     'answers': [
  //       {'text': 'Sasuke', 'score': 0},
  //       {'text': 'Kakashi', 'score': 0},
  //       {'text': 'Minato', 'score': 20},
  //       {'text': 'Sakura', 'score': 0},
  //     ],
  //   },
  //   {
  //     'question': 'Siapa nama Hokage kelima?',
  //     'answers': [
  //       {'text': 'Hashirama', 'score': 0},
  //       {'text': 'Sarutobi', 'score': 0},
  //       {'text': 'Naruto', 'score': 0},
  //       {'text': 'Tsunade', 'score': 20},
  //     ],
  //   },
  //   {
  //     'question': 'Apa nama jurus andalan Naruto?',
  //     'answers': [
  //       {'text': 'Rasengan', 'score': 20},
  //       {'text': 'Chidori', 'score': 0},
  //       {'text': 'Katon', 'score': 0},
  //       {'text': 'Byakugan', 'score': 0},
  //     ],
  //   },
  //   {
  //     'question': 'Siapa nama ibu Naruto?',
  //     'answers': [
  //       {'text': 'Sakura', 'score': 0},
  //       {'text': 'Kushina', 'score': 20},
  //       {'text': 'Kurenai', 'score': 0},
  //       {'text': 'Hinata', 'score': 0},
  //     ],
  //   },
  //   {
  //     'question': 'Dimana Naruto lahir?',
  //     'answers': [
  //       {'text': 'Otogakure', 'score': 0},
  //       {'text': 'Konohagakure', 'score': 20},
  //       {'text': 'Kumogakure', 'score': 0},
  //       {'text': 'Sunagakure', 'score': 0},
  //     ],
  //   }
  // ];

  var questions = [
    {
      'question': 'Tempat apa yang Anda kunjungi?',
      'answers': [
        {'text': 'Pegunungan', 'score': 10},
        {'text': 'Pantai', 'score': 5},
        {'text': 'Mall', 'score': 3},
        {'text': 'Hutan', 'score': 7},
      ],
    },
    {
      'question': 'Apa warna kesukaan Anda?',
      'answers': [
        {'text': 'Merah', 'score': 7},
        {'text': 'Biru', 'score': 3},
        {'text': 'Hijau', 'score': 5},
        {'text': 'Hitam', 'score': 1},
      ],
    },
    {
      'question': 'Apa hobby Anda?',
      'answers': [
        {'text': 'Sepak bola', 'score': 2},
        {'text': 'Basket', 'score': 3},
        {'text': 'Berenang', 'score': 6},
        {'text': 'Ngoding', 'score': 4},
      ],
    },
  ];

  void _answer(int score) {
    // print("Tombol sudah ditekan!");

    totalScore += score;
    setState(() {
      _questionIndex++;
      // if (_questionIndex == questions.length) _questionIndex = 0;
    });
    print(_questionIndex);
  }

  void _reset() {
    setState(() {
      _questionIndex = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Kuis Interaktif'),
          backgroundColor: Colors.blue,
        ),
        body: _questionIndex < questions.length
            ? Quiz(
                questions: questions,
                questionIndex: _questionIndex,
                answer: _answer)
            : Result(totalScore, _reset),
      ),
    );
  }
}
