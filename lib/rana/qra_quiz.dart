import 'package:flutter/material.dart';
import 'package:kido/rana/question.dart';
import 'package:kido/rana/result.dart';
import 'package:kido/rana/answer.dart';

class QuizQuran extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  QuizQuran({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionText'],
          questions[questionIndex]['img'],
        ), //Question
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => answerQuestion(answer['score']), answer['text']);
        }).toList()
      ],
    ); //Column
  }
}

class QuranQuiz extends StatefulWidget {
  @override
  _QuranQuizState createState() => _QuranQuizState();
}

class _QuranQuizState extends State<QuranQuiz> {
  final _questions = [
    {
      'img': 'images/qurran/AwlSura.jpg',
      'questionText': 'س1. اختر الإجابة الصحيحة',
      'answers': [
        {'text': 'سورة النصر', 'score': 0},
        {'text': 'سورة قريش', 'score': 0},
        {'text': 'سورة البقرة', 'score': 0},
        {'text': 'سورة الفاتحة', 'score': 2},
      ],
    },
    {
      'img': 'images/qurran/AlfathaQuiz.jpg',
      'questionText': 'س2. اختر الإجابة الصحيحة',
      'answers': [
        {'text': '7', 'score': 2},
        {'text': '8', 'score': 0},
        {'text': '9', 'score': 0},
        {'text': '10', 'score': 0},
      ],
    },
    {
      'img': 'images/qurran/AlekhlasQuiz.jpg',
      'questionText': 'س3. اختر الإجابة الصحيحة',
      'answers': [
        {'text': '3', 'score': 0},
        {'text': '4', 'score': 2},
        {'text': '5', 'score': 0},
        {'text': '6', 'score': 0},
      ],
    },
    {
      'img': 'images/qurran/AlfalaqQuiz.jpg',
      'questionText': 'س4. اختر الإجابة الصحيحة',
      'answers': [
        {'text': '3', 'score': 0},
        {'text': '4', 'score': 0},
        {'text': '5', 'score': 2},
        {'text': '6', 'score': 0},
      ],
    },
    {
      'img': 'images/qurran/AlnasQuiz.jpg',
      'questionText': 'س5. اختر الإجابة الصحيحة',
      'answers': [
        {'text': '3', 'score': 0},
        {'text': '4', 'score': 0},
        {'text': '5', 'score': 0},
        {'text': '6', 'score': 2},
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        //constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/BackgroundQuiz/Back1.jpg"),
                fit: BoxFit.cover)),
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('images/arrow.png'),
        ),
            centerTitle: true,
            title: Text('Quiz'),
            backgroundColor: Colors.teal[300],
          ),
          body: Padding(
            padding: const EdgeInsets.all(30.0),
            child: _questionIndex < _questions.length
                ? QuizQuran(
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex,
                    questions: _questions,
                  ) //Quiz
                : Result(_totalScore, _resetQuiz),
          ), //Padding
          //Scaffold
          // debugShowCheckedModeBanner: false,
        ));
  }
}
