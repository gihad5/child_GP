import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:avatar_glow/avatar_glow.dart';

//var finalScore = 0;
//var questionNumber = 0;

class AnimalsQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new AnimalsQuizState();
  }
}

class AnimalsQuizState extends State<AnimalsQuiz> {
  bool _isListening = false;
  stt.SpeechToText _speech;
  String _text = 'Press the button and start speaking';
  double _confidence = 1.0;
  var questionNumber = 0;
  var finalScore = 0;
  var colors = ["dog", "cat", "cow", "lion", "elephant"];
  var images = [
    "images/animals/dog.png",
    "images/animals/cat.png",
    "images/animals/cow.png",
    "images/animals/lion.png",
    "images/animals/elephant.png"
  ];

  @override
  void initState() {
    super.initState();
    print("init state");
    _speech = stt.SpeechToText();
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return new WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
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
              "Quize",
              style: TextStyle(fontFamily: 'Comic'),
            ),
          ),
          body: new Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: new Column(
              children: <Widget>[
                new Container(
                  alignment: Alignment.centerRight,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      new Text(
                        "Score: $finalScore",
                        style: new TextStyle(fontSize: 22.0),
                      )
                    ],
                  ),
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                new Image.asset(
                  images[questionNumber],
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                AvatarGlow(
                  animate: _isListening,
                  glowColor: Theme.of(context).primaryColor,
                  endRadius: 75.0,
                  duration: const Duration(milliseconds: 2000),
                  repeatPauseDuration: const Duration(milliseconds: 100),
                  repeat: true,
                  child: FloatingActionButton(
                    onPressed: _listen,
                    child: Icon(_isListening ? Icons.mic : Icons.mic_none),
                  ),
                ),
                new Padding(padding: EdgeInsets.all(15.0)),
                new Container(
                    alignment: Alignment.center,
                    child: Text(_text,
                        style: TextStyle(
                          fontSize: 32.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                        ))),
              ],
            ),
          ),
        ));
  }

  void _listen() async {
    if (!_isListening) {
      bool available = await _speech.initialize(
        onStatus: (val) => print('s'),
        onError: (val) => print('e'),
      );
      if (available) {
        setState(() => _isListening = true);
        _speech.listen(
          onResult: (val) => setState(() {
            _text = val.recognizedWords;

            print(_text.toLowerCase() +
                " ,,,,,, " +
                colors[questionNumber].toLowerCase());
            if (_text.toLowerCase() == colors[questionNumber].toLowerCase()) {
              finalScore++;
              print("equal");
            }
            if (val.hasConfidenceRating && val.confidence > 0) {
              _confidence = val.confidence;
              print("has confidence");
              updateQuestion();
              // print(_confidence);
            }
          }),
        );
      }
    } else {
      setState(() => _isListening = false);
      _speech.stop();
    }
  }

  void resetQuiz() {
    setState(() {
      Navigator.pop(context);
      finalScore = 0;
      questionNumber = 0;
    });
  }

  void updateQuestion() {
    setState(() {
      if (questionNumber == colors.length - 1) {
        Navigator.push(
            context,
            new MaterialPageRoute(
                builder: (context) => new Summary(
                      score: finalScore,
                    )));
      } else {
        questionNumber++;
      }
    });
  }
}

class Summary extends StatelessWidget {
  final int score;
  Summary({Key key, @required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: new Container(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(
                "Final Score: $score",
                style: new TextStyle(fontSize: 35.0),
              ),
              new Padding(padding: EdgeInsets.all(10.0)),
              new MaterialButton(
                color: Colors.red,
                onPressed: () {
                  //  questionNumber = 0;
                  //  finalScore = 0;
                  Navigator.pop(context);
                },
                child: new Text(
                  "Eixt",
                  style: new TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
/*import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

var finalScore = 0;

class AnimalsQuiz extends StatefulWidget {
  @override
  _AnimalsQuizState createState() => _AnimalsQuizState();
}

class _AnimalsQuizState extends State<AnimalsQuiz> {
  var player = AudioCache();
  Map<String, bool> score = {};
  Map<String, String> choices = {
    '🐘': "Elephant",
    '🐈': "Cat",
    '🐇': "Rabbit",
    '🐒': "Monkey",
    '🐄': "Cow",
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
          " Quiz ",
          style: TextStyle(fontFamily: 'Comic'),
        ),
      ),
      body: Container(
          /* decoration: BoxDecoration(
              /*image: DecorationImage(
            image: AssetImage('images/coq.jpg'),
            fit: BoxFit.fill,
          )*/),*/
          child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                new Text(
                  "Your Score: $finalScore",
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
                          child:
                              Movable(score[element] == true ? '✔️' : element),
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
      /* floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            //finalScore.clear();
            index++;
            finalScore = 0;
          });
        },
      ),*/
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
          player.play('ggg.mp3');
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
