import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;
import 'package:avatar_glow/avatar_glow.dart';

//var finalScore = 0;
//var questionNumber = 0;

class CoQuize extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CoQuizeState();
  }
}

class CoQuizeState extends State<CoQuize> {
  bool _isListening = false;
  stt.SpeechToText _speech;
  String _text = 'Press the button and start speaking';
  double _confidence = 1.0;
  var questionNumber = 0;
  var finalScore = 0;
  var colors = ["blue", "orange", "red", "green", "yellow"];
  var images = [
    "images/co/blue.png",
    "images/co/orange.png",
    "images/co/red.png",
    "images/co/green.png",
    "images/co/yellow.png"
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

/*import 'package:flutter/material.dart';

var finalScore = 0;
var questionNumber = 0;
var quiz = new AnimalQuiz();

class AnimalQuiz {
  var images = [
    "blue",
    "red",
  ];

  var questions = [
    "🔵",
    "🔴",
  ];

  var choices = [
    ["blue", "red", "green", "yellow"],
    ["green", "red", "orange", "blue"],
  ];

  var correctAnswers = [
    "blue",
    "red",
  ];
}

class CoQuize extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new CoQuizeState();
  }
}

class CoQuizeState extends State<CoQuize> {
  @override
  Widget build(BuildContext context) {
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
                new Padding(padding: EdgeInsets.all(20.0)),

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

                //image
                new Padding(padding: EdgeInsets.all(10.0)),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Text(
                  quiz.questions[questionNumber],
                  style: new TextStyle(
                    fontSize: 100.0,
                  ),
                ),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //button 1
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.teal[300],
                      onPressed: () {
                        if (quiz.choices[questionNumber][0] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][0],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),

                    //button 2
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.teal[300],
                      onPressed: () {
                        if (quiz.choices[questionNumber][1] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][1],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),

                new Padding(padding: EdgeInsets.all(10.0)),

                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    //button 3
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.teal[300],
                      onPressed: () {
                        if (quiz.choices[questionNumber][2] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][2],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),

                    //button 4
                    new MaterialButton(
                      minWidth: 120.0,
                      color: Colors.teal[300],
                      onPressed: () {
                        if (quiz.choices[questionNumber][3] ==
                            quiz.correctAnswers[questionNumber]) {
                          debugPrint("Correct");
                          finalScore++;
                        } else {
                          debugPrint("Wrong");
                        }
                        updateQuestion();
                      },
                      child: new Text(
                        quiz.choices[questionNumber][3],
                        style:
                            new TextStyle(fontSize: 20.0, color: Colors.white),
                      ),
                    ),
                  ],
                ),

                new Padding(padding: EdgeInsets.all(15.0)),

                new Container(
                    alignment: Alignment.bottomCenter,
                    child: new MaterialButton(
                        minWidth: 240.0,
                        height: 30.0,
                        color: Colors.yellow,
                        onPressed: resetQuiz,
                        child: new Text(
                          "Eixt",
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.white),
                        ))),
              ],
            ),
          ),
        ));
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
      if (questionNumber == quiz.questions.length - 1) {
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
                  questionNumber = 0;
                  finalScore = 0;
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
}*/
