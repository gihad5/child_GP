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

class BirdQuiz extends StatefulWidget {
  @override
  _BirdQuizState createState() => _BirdQuizState();
}

class _BirdQuizState extends State<BirdQuiz> {
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
      'img': 'images/Birds/flamingo.png',
      'questionText': 'Q1. What is the name of this bird?',
      'answers': [
        //{'child': Image.asset('Bird/flammngo.png')},
        {'text': 'Bat', 'score': 0},
        {'text': 'Swan', 'score': 0},
        {'text': 'Flamingo', 'score': 1},
        {'text': 'Parrot', 'score': 0},
      ],
    },
    {
      'img': 'images/Birds/pinguin.png',
      'questionText': 'Q2. What is the name of this bird?',
      'answers': [
        {'text': 'Swan', 'score': 0},
        {'text': 'Owl', 'score': 0},
        {'text': 'Duck', 'score': 0},
        {'text': 'Penguin', 'score': 1},
      ],
    },
    {
      'img': 'images/Birds/sparrow.png',
      'questionText': ' Q3. What is the name of this bird?',
      'answers': [
        {'text': 'Parrot', 'score': 0},
        {'text': 'Sparrow', 'score': 1},
        {'text': 'Peacock', 'score': 0},
        {'text': 'Chicken', 'score': 0},
      ],
    },
    {
      'img': 'images/Birds/ducks.png',
      'questionText': 'Q4. What is the name of this bird?',
      'answers': [
        {'text': 'Butterfly', 'score': 0},
        {'text': 'Owl', 'score': 0},
        {'text': 'Duck', 'score': 1},
        {'text': 'Cock', 'score': 0},
      ],
    },
    {
      'img': 'images/Birds/Swan.png',
      'questionText': 'Q5. What is the name of this bird?',
      'answers': [
        {'text': 'Swan', 'score': 1},
        {'text': 'Parrot', 'score': 0},
        {'text': 'Owl', 'score': 0},
        {'text': 'Rooster', 'score': 0},
      ],
    },

    {
      'img': 'images/Birds/hen.png',
      'questionText': 'Q6. Is this a Hen?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
      ],
    },

    {
      'img': 'images/Birds/peacock.png',
      'questionText': 'Q7. Is this a ButterFly?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 1},
      ],
    },

    {
      'img': 'images/Birds/bat.png',
      'questionText': 'Q8. Is this a Penguin?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 1},
      ],
    },

    {
      'img': 'images/Birds/owl.png',
      'questionText': 'Q9. Is this an Owl?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
      ],
    },

    {
      'img': 'images/Birds/parrot.png',
      'questionText': 'Q10. Is this a Sparrow?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 1},
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
