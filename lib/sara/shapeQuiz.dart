import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

var finalScore = 0;

class ShapeQuiz extends StatefulWidget {
  @override
  _ShapeQuizState createState() => _ShapeQuizState();
}

class _ShapeQuizState extends State<ShapeQuiz> {
  var player = AudioCache();
  Map<String, bool> score = {};
  Map<String, String> choices = {
    '⬛': "Square",
    '🔵': "circle",
    '🔺': "Triangle",
    '⭐': "star",
    '♦️': "Diamond",
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
}
