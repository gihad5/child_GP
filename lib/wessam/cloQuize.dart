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

class CloQuize extends StatefulWidget {
  @override
  _CloQuizeState createState() => _CloQuizeState();
}

class _CloQuizeState extends State<CloQuize> {
  final _questions = [
    
    {
      'img': 'images/clo/jaket.png',
      'questionText': 'Q1. What is that name ?',
      'answers': [
        {'text': 'Skrit', 'score': 0},
        {'text': 'Boot', 'score': 0},
        {'text': 'Jacket', 'score': 2},
        {'text': 'Dress', 'score': 0},
      ],
    },
    {
      'img': 'images/clo/skrit.png',
      'questionText': 'Q2. What is that name ?',
      'answers': [
        {'text': 'Boot', 'score': 0},
        {'text': 'Cap', 'score': 0},
        {'text': 'Jacket', 'score': 0},
        {'text': 'Skrit', 'score': 2},
      ],
    },
    {
      'img': 'images/clo/boot.png',
      'questionText': ' Q3. What is that name ?',
      'answers': [
        {'text': 'Skrit', 'score': 0},
        {'text': 'Boot', 'score': 2},
        {'text': 'Cap', 'score': 0},
        {'text': 'Dress', 'score': 0},
      ],
    },
    {
      'img': 'images/clo/dress.png',
      'questionText': 'Q4. What is that name ?',
      'answers': [
        {'text': 'Skrit', 'score': 0},
        {'text': 'Cap', 'score': 0},
        {'text': 'Dress', 'score': 2},
        {'text': 'Jeans', 'score': 0},
      ],
    },
    {
      'img': 'images/clo/jeans.png',
      'questionText': 'Q5. What is that name ?',
      'answers': [
        {'text': 'Jeans', 'score': 2},
        {'text': 'Cap', 'score': 0},
        {'text': 'Skrit', 'score': 0},
        {'text': 'Dress', 'score': 0},
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
        
        child: Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('images/arrow.png'),
        ),
        backgroundColor: Colors.teal[300],
        centerTitle: true,
        title: Text('Quiz of Clothes'),
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

/*import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

var finalScore = 0;

class CloQuize extends StatefulWidget {
  @override
  _CloQuizeState createState() => _CloQuizeState();
}

class _CloQuizeState extends State<CloQuize> {
  var player = AudioCache();
  Map<String, bool> score = {};
  Map<String, String> choices = {
    '👖': "Jeans",
    '👕': "T-shirt",
    '👒': "Hat",
    '👗': "dress",
    '👢': "Boots",
  };
  int index = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('images/arrow.png'),
        ),
        backgroundColor: Colors.teal[300],
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          " Quize ",
          style: TextStyle(fontFamily: 'Comic'),
        ),
      ),
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/coq.jpg'),
            fit: BoxFit.fill,
          )),
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    new Text(
                      "Score: $finalScore",
                      style: new TextStyle(
                        fontSize: 22.0,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: choices.keys.map((element) {
                          return Expanded(
                            child: Draggable<String>(
                              data: element,
                              child: Movable(
                                  score[element] == true ? '✔️' : element),
                              feedback: Movable(element),
                              childWhenDragging: Movable(element),
                            ),
                          );
                        }).toList(),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: choices.keys.map((element) {
                          return buildTarget(element);
                        }).toList()
                          ..shuffle(Random(index)),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            //finalScore.clear();
            index++;
            finalScore = 0;
          });
        },
      ),
    );
  }

  Widget buildTarget(element) {
    return DragTarget<String>(
      builder: (context, incoming, rejected) {
        if (score[element] == true) {
          return Container(
            // color: Colors.,
            child: Text('Congratulations !'),
            alignment: Alignment.center,
            height: 100,
            width: 200,
          );
        } else {
          return Container(
            alignment: Alignment.center,
            child: Text(
              choices[element],
              style: TextStyle(
                fontFamily: 'comic',
                fontSize: 30,
                color: Colors.teal[300],
                fontWeight: FontWeight.bold,
              ),
            ),
            height: 50,
            width: 200,
          );
        }
      },
      onWillAccept: (data) => data == element,
      onAccept: (data) {
        setState(() {
          score[element] = true;
          finalScore += 2;
          player.play('true.mp3');
        });
      },
      onLeave: (data) {},
    );
  }
}

class Movable extends StatelessWidget {
  String emoji;
  Movable(this.emoji);
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(7),
        height: 150,
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 60),
        ),
      ),
    );
  }
}*/
