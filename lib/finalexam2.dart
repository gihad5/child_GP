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
  int totalScoree;
  Final(this.totalScoree);

  @override
  _FinalState createState() => _FinalState();
}

class _FinalState extends State<Final> {
  @override
  final _questions = [
    {
      'img': 'images/Body Parts/Eye3.png',
      'questionText': 'Q5. What is the number of the eyes ?',
      'answers': [
        {'text': '1', 'score': 0},
        {'text': '2', 'score': 2},
        {'text': '3', 'score': 0},
        {'text': '4', 'score': 0},
      ],
    },
    {
      'img': 'images/eng/fruits9.png',
      'questionText': 'Q6. What is the color of the banana ?',
      'answers': [
        {'text': 'Yellow', 'score': 2},
        {'text': 'Blue', 'score': 0},
        {'text': 'Red', 'score': 0},
        {'text': 'Orange', 'score': 0},
      ],
    },
    {
      'img': 'images/veg/carrot.png',
      'questionText': ' Q7. What is that ?',
      'answers': [
        {'text': 'Apple', 'score': 0},
        {'text': 'Carrot', 'score': 2},
        {'text': 'Tomato', 'score': 0},
        {'text': 'Onion', 'score': 0},
      ],
    },
    {
      'img': 'images/shape/square.png',
      'questionText': 'Q8. What is this shape ?',
      'answers': [
        {'text': 'Star', 'score': 0},
        {'text': 'Triangle', 'score': 0},
        {'text': 'Rectangle', 'score': 0},
        {'text': 'Square', 'score': 2},
      ],
    },
    {
      'img': 'images/Vehicles/bicycle.png',
      'questionText': 'Q9. What is that ?',
      'answers': [
        {'text': 'Boat', 'score': 0},
        {'text': 'Bicycle', 'score': 2},
        {'text': 'Bus', 'score': 0},
        {'text': 'Rocket', 'score': 0},
      ],
    },
    {
      'img': 'images/clo/cap.png',
      'questionText': 'Q10. What is that ?',
      'answers': [
        {'text': 'Cap', 'score': 2},
        {'text': 'Jaket', 'score': 0},
        {'text': 'Dress', 'score': 0},
        {'text': 'Skrit', 'score': 0},
      ],
    },
    {
      'img': 'images/veg/cucu.png',
      'questionText': 'Q11. What is that ?',
      'answers': [
        {'text': 'Tomato', 'score': 0},
        {'text': 'Onion', 'score': 0},
        {'text': 'Cucumbr', 'score': 2},
        {'text': 'Cabbage', 'score': 0},
      ],
    },
    {
      'img': 'images/eng/apple.png',
      'questionText': 'Q12. What is the color of this apple ?',
      'answers': [
        {'text': 'Yellow', 'score': 0},
        {'text': 'Blue', 'score': 0},
        {'text': 'Red', 'score': 2},
        {'text': 'Orange', 'score': 0},
      ],
    },
    {
      'img': 'images/Body Parts/Nose1.png',
      'questionText': 'Q13. What is the number of the Nose ?',
      'answers': [
        {'text': '1', 'score': 2},
        {'text': '2', 'score': 0},
        {'text': '3', 'score': 0},
        {'text': '4', 'score': 0},
      ],
    },
    {
      'img': 'images/Week-days/DaysStairs.png',
      'questionText': 'Q14. What is the number of week days ? ',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '5', 'score': 0},
        {'text': '7', 'score': 2},
        {'text': '12', 'score': 0},
      ],
    },
    {
      'img': 'images/Vehicles/boat.png',
      'questionText': 'Q15. What is that ?',
      'answers': [
        {'text': 'Boat', 'score': 2},
        {'text': 'Bicycle', 'score': 0},
        {'text': 'Bus', 'score': 0},
        {'text': 'Rocket', 'score': 0},
      ],
    },
    {
      'img': 'images/clo/dress.png',
      'questionText': 'Q16. What is that ?',
      'answers': [
        {'text': 'Cap', 'score': 0},
        {'text': 'Jaket', 'score': 0},
        {'text': 'Dress', 'score': 2},
        {'text': 'Skrit', 'score': 0},
      ],
    },
    {
      'img': 'images/Birds/owl.png',
      'questionText': 'Q17. Is this an Owl ?',
      'answers': [
        {'text': 'Yes', 'score': 2},
        {'text': 'No', 'score': 0},
      ],
    },
    {
      'img': 'images/numbers/b.png',
      'questionText': 'Q18. What is the number of these ? ',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '3', 'score': 2},
        {'text': '6', 'score': 0},
        {'text': '8', 'score': 0},
      ],
    },
    {
      'img': 'images/numbers/s.png',
      'questionText': 'Q19. What is the number of these ? ',
      'answers': [
        {'text': 'Two', 'score': 0},
        {'text': 'Three', 'score': 0},
        {'text': 'Six', 'score': 2},
        {'text': 'Eight', 'score': 0},
      ],
    },
    {
      'img': 'images/month/e.jpg',
      'questionText': 'Q20. What is the number of months in the year ? ',
      'answers': [
        {'text': '2', 'score': 0},
        {'text': '5', 'score': 0},
        {'text': '7', 'score': 0},
        {'text': '12', 'score': 2},
      ],
    },
    {
      'img': 'images/Body Parts/Hand.png',
      'questionText': 'Q21. What is the number of Fingers in one hand ?',
      'answers': [
        {'text': 'One', 'score': 0},
        {'text': 'Two', 'score': 0},
        {'text': 'Four', 'score': 0},
        {'text': 'Five', 'score': 2},
      ],
    },
    {
      'img': 'images/kuraan/f.jpg',
      'questionText': 'Q22.ما اسم هذه السورة ؟',
      'answers': [
        {'text': 'الفلق', 'score': 0},
        {'text': 'الناس', 'score': 0},
        {'text': 'البقرة', 'score': 0},
        {'text': 'الفاتحة', 'score': 2},
      ],
    },
    {
      'img': 'images/shape/triangle.png',
      'questionText': 'Q23. What is this shape ?',
      'answers': [
        {'text': 'Star', 'score': 0},
        {'text': 'Triangle', 'score': 2},
        {'text': 'Rectangle', 'score': 0},
        {'text': 'Square', 'score': 0},
      ],
    },
    {
      'img': 'images/Birds/parrot.png',
      'questionText': 'Q24. Is this a Sparrow ?',
      'answers': [
        {'text': 'Yes', 'score': 0},
        {'text': 'No', 'score': 2},
      ],
    },
    {
      'img': 'images/animals/cow.png',
      'questionText': 'Q25. What is that ?',
      'answers': [
        {'text': 'Dog', 'score': 0},
        {'text': 'Cat', 'score': 0},
        {'text': 'Elephant', 'score': 0},
        {'text': 'Cow', 'score': 2},
      ],
    },
  ];

  var _questionIndex = 0;
  int _totalScore = 0;

  @override
  void initState() {
    _totalScore = widget.totalScoree;
    print('totallll ' + _totalScore.toString());
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = widget.totalScoree;
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
        title: Text('Final Exam'),
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
            : Result(_totalScore, _resetQuiz, "final exam"),
      ), //Padding
      //Scaffold
      // debugShowCheckedModeBanner: false,
    ));
  }
}
