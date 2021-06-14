import 'package:flutter/material.dart';
import 'package:kido/rana/question.dart';
import 'package:kido/rana/result.dart';
import 'package:kido/rana/answer.dart';

class QuizDay extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  QuizDay({
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

class DaysQuiz extends StatefulWidget {
  @override
  _DaysQuizState createState() => _DaysQuizState();
}

class _DaysQuizState extends State<DaysQuiz> {
  final _questions = [
    {
      'img': 'images/Week-days/OrderDays1.jpg',
      'questionText': 'Q1. Choose the right Answer',
      'answers': [
        {'text': 'A) Sunday - Friday - Saturday ', 'score': 0},
        {'text': 'B) Monday - Thursday - Sunday ', 'score': 0},
        {'text': 'C) Wednesday - Friday - Saturday ', 'score': 0},
        {'text': 'D) Monday - Wednesday - Friday ', 'score': 2},
      ],
    },
    {
      'img': 'images/Week-days/OrderDays2.jpg',
      'questionText': 'Q2. Choose the right Answer',
      'answers': [
        {'text': 'A) Monday - Wednesday - Thursday - Sunday ', 'score': 2},
        {'text': 'B) Saturday - Thursday - Sunday - Friday ', 'score': 0},
        {'text': 'C) Sunday - Tuesday - Monday - Wednesday ', 'score': 0},
        {'text': 'D) Friday - Saturday - Sunday - Monday ', 'score': 0},
      ],
    },
    {
      'img': 'images/Week-days/CompleteDays.jpg',
      'questionText': 'Q3. Choose the right Answer',
      'answers': [
        {'text': 'A) 1.Sunday - 2.Tuesday - 3.Saturday ', 'score': 0},
        {'text': 'B) 1.Monday - 2.Thursday - 3.Saturday ', 'score': 2},
        {'text': 'C) 1.Wednesday - 2.Friday - 3.Saturday ', 'score': 0},
        {'text': 'D) 1.Friday - 2.Monday - 3.Saturday ', 'score': 0},
      ],
    },
    {
      'img': 'images/Week-days/RandomDays.png',
      'questionText': 'Q4. Order the days',
      'answers': [
        {
          'text':
              'A) Sunday - Saturday - Monday - Friday - Wednesday - Thursday - Tuesday ',
          'score': 0
        },
        {
          'text':
              'B) Sunday - Monday - Tuesday - Wednesday - Thursday - Friday - Saturday ',
          'score': 2
        },
      ],
    },
    {
      'img': 'images/Week-days/DaysStairs.png',
      'questionText': 'Q5. Are these days in the correct order ?',
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
        centerTitle: true,
        title: Text('Quiz of Days'),
        backgroundColor: Color(0x3F00E676),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: _questionIndex < _questions.length
            ? QuizDay(
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
