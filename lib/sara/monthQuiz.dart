import 'package:flutter/material.dart';
import 'package:kido/rana/answer.dart';
import 'package:kido/rana/result.dart';
import 'package:kido/rana/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
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

class MonthQuiz extends StatefulWidget {
  @override
  _MonthQuizState createState() => _MonthQuizState();
}

class _MonthQuizState extends State<MonthQuiz> {
  final _questions = [
    {
      'img': 'images/month/a.jpg',
      'questionText': 'Q1. What is the name of the missing month ?',
      'answers': [
        {'text': 'July', 'score': 0},
        {'text': 'January', 'score': 0},
        {'text': 'May', 'score': 2},
        {'text': 'April', 'score': 0},
      ],
    },
    {
      'img': 'images/month/b.jpg',
      'questionText': 'Q2. What is the name of the missing month ?',
      'answers': [
        {'text': 'January', 'score': 0},
        {'text': 'July', 'score': 0},
        {'text': 'May', 'score': 0},
        {'text': 'April', 'score': 2},
      ],
    },
    {
      'img': 'images/month/c.jpg',
      'questionText': ' Q3. What is the name of the missing month ?',
      'answers': [
        {'text': 'April', 'score': 0},
        {'text': 'August', 'score': 2},
        {'text': 'May', 'score': 0},
        {'text': 'June', 'score': 0},
      ],
    },
    {
      'img': 'images/month/d.jpg',
      'questionText': 'Q4. What is the name of the missing month ?',
      'answers': [
        {'text': 'December', 'score': 0},
        {'text': 'June', 'score': 0},
        {'text': 'January', 'score': 2},
        {'text': 'May', 'score': 0},
      ],
    },
    {
      'img': 'images/month/e.jpg',
      'questionText': 'Q5. Are these monthes in the correct order?',
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
    return Container(
        /* constraints: BoxConstraints.expand(),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("BackgroundQuiz/Back1.jpg"),
                        fit: BoxFit.cover)),*/
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
            ? Quiz(
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
