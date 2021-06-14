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
    //  Container(
    // child: ListView(
    //  children: <Widget>[
    //         Container(
    //             width: 320,
    //   child: Column(
    //     children : [
    //       SizedBox(
    //       height: 200,
    //       child: Image.asset('Birds/sparrow.png'),
    //       ),
    //'questionText': 'Q1. Who created Flutter?'
    //SizedBox(

    //child: ('questionText': 'Q1. Who created Flutter?',) ,
    //),
    //  ]))])), List<Map<String, Object>>

    {
      'img': 'images/month/a.jpg',
      'questionText': 'Q1. What is the name of this month?',
      'answers': [
        //{'child': Image.asset('Bird/flammngo.png')},
        {'text': 'july', 'score': 0},
        {'text': 'January', 'score': 0},
        {'text': 'May', 'score': 1},
        {'text': 'April', 'score': 0},
      ],
    },
    {
      'img': 'images/month/b.jpg',
      'questionText': 'Q2. What is the name of this month?',
      'answers': [
        {'text': 'January', 'score': 0},
        {'text': 'july', 'score': 0},
        {'text': 'May', 'score': 0},
        {'text': 'April', 'score': 1},
      ],
    },
    {
      'img': 'images/month/c.jpg',
      'questionText': ' Q3. What is the name of this month?',
      'answers': [
        {'text': 'April', 'score': 0},
        {'text': 'August', 'score': 1},
        {'text': 'car', 'score': 0},
        {'text': 'june', 'score': 0},
      ],
    },
    {
      'img': 'images/month/d.jpg',
      'questionText': 'Q4. What is the name of this month?',
      'answers': [
        {'text': 'wensday', 'score': 0},
        {'text': 'june', 'score': 0},
        {'text': 'January', 'score': 1},
        {'text': 'Cock', 'score': 0},
      ],
    },
    {
      'img': 'images/month/e.jpg',
      'questionText': 'Q5. Are these monthes in the correct order?',
      'answers': [
        {'text': 'Yes', 'score': 1},
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
        centerTitle: true,
        title: Text('Quiz of Birds'),
        backgroundColor: Color(0x3F00E676),
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
