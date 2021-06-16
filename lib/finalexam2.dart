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

class Final extends StatefulWidget {
  @override
  _FinalState createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  final _questions = [
    {
      'img': 'images/Body Parts/Eye3.png',
      'questionText': 'Q5. What is the number of eyes',
      'answers': [
        {'text': 'one', 'score': 0},
        {'text': 'two', 'score': 1},
        {'text': 'three', 'score': 0},
        {'text': 'four', 'score': 0},
      ],
    },
    {
      'img': 'images/eng/fruits9.png',
      'questionText': 'Q6. What is the color of banana?',
      'answers': [
        {'text': 'yellow', 'score': 1},
        {'text': 'blue', 'score': 0},
        {'text': 'red', 'score': 0},
        {'text': 'orange', 'score': 0},
      ],
    },
    {
      'img': 'images/veg/carrot.png',
      'questionText': ' Q7. What is the name of vegtables?',
      'answers': [
        {'text': 'apple', 'score': 0},
        {'text': 'carrot', 'score': 1},
        {'text': 'tomato', 'score': 0},
        {'text': 'onion', 'score': 0},
      ],
    },
    {
      'img': 'images/shape/square.png',
      'questionText': 'Q8. What is the name of shape?',
      'answers': [
        {'text': 'star', 'score': 0},
        {'text': 'triangle', 'score': 0},
        {'text': 'rectangle', 'score': 0},
        {'text': 'square', 'score': 1},
      ],
    },
    {
      'img': 'images/Vehicles/bicycle.png',
      'questionText': 'Q9. What is the name of vechile',
      'answers': [
        {'text': 'boat', 'score': 0},
        {'text': 'bicycle', 'score': 1},
        {'text': 'bus', 'score': 0},
        {'text': 'rocket', 'score': 0},
      ],
    },
    {
      'img': 'images/clo/cap.png',
      'questionText': 'Q10. What is the name of vechile?',
      'answers': [
        {'text': 'cap', 'score': 1},
        {'text': 'jaket', 'score': 0},
        {'text': 'dress', 'score': 0},
        {'text': 'skrit', 'score': 0},
      ],
    },
    {
      'img': 'images/veg/cucu.png',
      'questionText': 'Q11. What is the name of vegtables?',
      'answers': [
        {'text': 'tomato', 'score': 0},
        {'text': 'onion', 'score': 0},
        {'text': 'cucumbr', 'score': 1},
        {'text': 'cabbage', 'score': 0},
      ],
    },
    {
      'img': 'images/eng/apple.png',
      'questionText': 'Q12. What is the color of the apple?',
      'answers': [
        {'text': 'yellow', 'score': 0},
        {'text': 'blue', 'score': 0},
        {'text': 'red', 'score': 1},
        {'text': 'orange', 'score': 0},
      ],
    },
    {
      'img': 'images/Body Parts/Nose1.png',
      'questionText': 'Q13. What is the number of Nose',
      'answers': [
        {'text': 'one', 'score': 1},
        {'text': 'two', 'score': 0},
        {'text': 'three', 'score': 0},
        {'text': 'four', 'score': 0},
      ],
    },
    {
      'img': 'images/Week-days/DaysStairs.png',
      'questionText': 'Q14. What is the number of days in the week? ',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '5', 'score': 0},
        {'text': '7', 'score': 1},
        {'text': '12', 'score': 0},
      ],
    },
    {
      'img': 'images/Vehicles/boat.png',
      'questionText': 'Q15. What is the name of vechile?',
      'answers': [
        {'text': 'boat', 'score': 1},
        {'text': 'bicycle', 'score': 0},
        {'text': 'bus', 'score': 0},
        {'text': 'rocket', 'score': 0},
      ],
    },
    {
      'img': 'images/clo/dress.png',
      'questionText': 'Q16. What is the name of vechile?',
      'answers': [
        {'text': 'cap', 'score': 0},
        {'text': 'jaket', 'score': 0},
        {'text': 'dress', 'score': 1},
        {'text': 'skrit', 'score': 0},
      ],
    },
    {
      'img': 'images/Birds/owl.png',
      'questionText': 'Q17. Is this an Owl?',
      'answers': [
        {'text': 'Yes', 'score': 1},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'img': 'images/numbers/b.png',
      'questionText': 'Q18. What is the number of these? ',
      'answers': [
        {'text': 'two', 'score': 0},
        {'text': 'three', 'score': 1},
        {'text': 'six', 'score': 0},
        {'text': 'eight', 'score': 0},
      ],
    },
    {
      'img': 'images/numbers/s.png',
      'questionText': 'Q19. What is the number of these? ',
      'answers': [
        {'text': 'two', 'score': 0},
        {'text': 'three', 'score': 0},
        {'text': 'six', 'score': 1},
        {'text': 'eight', 'score': 0},
      ],
    },
    {
      'img': 'images/month/e.jpg',
      'questionText': 'Q20. What is the number of months in the year? ',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '5', 'score': 0},
        {'text': '7', 'score': 0},
        {'text': '12', 'score': 1},
      ],
    },
    {
      'img': 'images/Body Parts/Hand.png',
      'questionText': 'Q21. What is the number of Fingers in one hand?',
      'answers': [
        {'text': 'one', 'score': 0},
        {'text': 'two', 'score': 0},
        {'text': 'four', 'score': 0},
        {'text': 'five', 'score': 1},
      ],
    },
    {
      'img': 'images/kuraan/f.jpg',
      'questionText': 'Q22.ما اسم هذه السورة ؟',
      'answers': [
        {'text': 'الفلق', 'score': 0},
        {'text': 'الناس', 'score': 0},
        {'text': 'البقرة', 'score': 0},
        {'text': 'الفاتحة', 'score': 1},
      ],
    },
    {
      'img': 'images/shape/triangle.png',
      'questionText': 'Q23. What is the name of shape?',
      'answers': [
        {'text': 'star', 'score': 0},
        {'text': 'triangle', 'score': 1},
        {'text': 'rectangle', 'score': 0},
        {'text': 'square', 'score': 0},
      ],
    },
    {
      'img': 'images/Birds/parrot.png',
      'questionText': 'Q24. Is this a Sparrow?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 1},
      ],
    },
    {
      'img': 'images/animals/cow.png',
      'questionText': 'Q25. What is the name of animal?',
      'answers': [
        {'text': 'dog', 'score': 0},
        {'text': 'cat', 'score': 1},
        {'text': 'elephant', 'score': 0},
        {'text': 'cow', 'score': 0},
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
