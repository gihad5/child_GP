import 'package:flutter/material.dart';
import 'package:kido/rana/question.dart';
import 'package:kido/rana/answer.dart';
import 'package:kido/rana/result.dart';

class QuizS extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  QuizS({
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

class SeasonsQuiz extends StatefulWidget {
  @override
  _SeasonsQuizState createState() => _SeasonsQuizState();
}

class _SeasonsQuizState extends State<SeasonsQuiz> {
  final _questions = [
    {
      'img': 'images/seasons/qfall.png',
      'questionText': 'Q1. What is this season?',
      'answers': [
        {'text': 'A) Autumn ', 'score': 2},
        {'text': 'B) Winter ', 'score': 0},
        {'text': 'C) Spring ', 'score': 0},
        {'text': 'D) Summer ', 'score': 0},
      ],
    },
    {
      'img': 'images/seasons//qwinter.png',
      'questionText': 'Q2. What is this season?',
      'answers': [
        {'text': 'A) Spring ', 'score': 0},
        {'text': 'B) Summer ', 'score': 0},
        {'text': 'C) Autumn ', 'score': 0},
        {'text': 'D) Winter ', 'score': 2},
      ],
    },
    {
      'img': 'images/seasons//qspring.jpg',
      'questionText': 'Q3. What is this season?',
      'answers': [
        {'text': 'A) Winter ', 'score': 0},
        {'text': 'B) Spring ', 'score': 2},
        {'text': 'C) Summer ', 'score': 0},
        {'text': 'D) Autumn ', 'score': 0},
      ],
    },
    {
      'img': 'images/seasons//qsummer.png',
      'questionText': 'Q4. What is this season',
      'answers': [
        {'text': 'A) Spring ', 'score': 0},
        {'text': 'B) Summer ', 'score': 2},
        {'text': 'C) Autumn ', 'score': 0},
        {'text': 'D) Winter ', 'score': 0},
      ],
    },
    {
      'img': 'images/seasons//Seasons.jpg',
      'questionText': 'Q5. Are these seasons in the correct order ?',
      'answers': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 0},
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
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),

       appBar: AppBar(
           leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('images/arrow.png'),
        ),
        backgroundColor: Colors.teal[300],
        centerTitle: true,
        title: Text('Quiz'),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: _questionIndex < _questions.length
            ? QuizS(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              ) //Quiz
            : Result(_totalScore, _resetQuiz),
      ), //Padding
      //Scaffold
      // debugShowCheckedModeBanner: false,
    );
  }
}
