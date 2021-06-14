import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class EngSlider extends StatefulWidget {
  @override
  _EngSliderState createState() => _EngSliderState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

class _EngSliderState extends State<EngSlider> {
  List<String> alphabetical = [
    'English',
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
  ];

  AudioPlayer advancePlayer;
  AudioCache audioCache;
  //initiate the Playing

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    advancePlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: advancePlayer);

    advancePlayer.durationHandler = (d) => setState(() {});
  }

  String localFilePath;

  int main = 0;

  @override
  Widget build(BuildContext context) {
    var _list = 0;

    void DisplayList() {
      setState(() {
        _list = _list++;
      });
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('images/arrow.png'),
        ),
        elevation: 0.0,
        backgroundColor: Colors.teal[300],
        title: Text("English"),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            /* image: DecorationImage(
          image: AssetImage('assets/background_abc.png'),
          fit: BoxFit.cover,
        )*/
            ),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CarouselSlider(
                autoPlay: true,
                autoPlayInterval: Duration(milliseconds: 2700),
                height: 400.0,
                initialPage: 0,
                reverse: false,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  if (alphabetical[index] == 'English') {}
                  if (alphabetical[index] == 'a') {
                    if (audioCache.play('a.mp3') == audioCache.play('a.mp3')) {
                      audioCache.play('a.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'b') {
                    if (audioCache.play('b.mp3') == audioCache.play('b.mp3')) {
                      audioCache.play('b.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'c') {
                    if (audioCache.play('c.mp3') == audioCache.play('c.mp3')) {
                      audioCache.play('c.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'd') {
                    if (audioCache.play('d.mp3') == audioCache.play('d.mp3')) {
                      audioCache.play('d.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'e') {
                    if (audioCache.play('e.mp3') == audioCache.play('e.mp3')) {
                      audioCache.play('e.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'f') {
                    if (audioCache.play('f.mp3') == audioCache.play('f.mp3')) {
                      audioCache.play('f.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'g') {
                    if (audioCache.play('g.mp3') == audioCache.play('g.mp3')) {
                      audioCache.play('g.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'h') {
                    if (audioCache.play('h.mp3') == audioCache.play('h.mp3')) {
                      audioCache.play('h.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'i') {
                    if (audioCache.play('i.mp3') == audioCache.play('i.mp3')) {
                      audioCache.play('i.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'j') {
                    if (audioCache.play('j.mp3') == audioCache.play('j.mp3')) {
                      audioCache.play('j.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'k') {
                    if (audioCache.play('k.mp3') == audioCache.play('k.mp3')) {
                      audioCache.play('k.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'l') {
                    if (audioCache.play('l.mp3') == audioCache.play('l.mp3')) {
                      audioCache.play('l.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'm') {
                    if (audioCache.play('m.mp3') == audioCache.play('m.mp3')) {
                      audioCache.play('m.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'n') {
                    if (audioCache.play('n.mp3') == audioCache.play('n.mp3')) {
                      audioCache.play('n.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'o') {
                    if (audioCache.play('o.mp3') == audioCache.play('o.mp3')) {
                      audioCache.play('o.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'p') {
                    if (audioCache.play('p.mp3') == audioCache.play('p.mp3')) {
                      audioCache.play('p.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'q') {
                    if (audioCache.play('q.mp3') == audioCache.play('q.mp3')) {
                      audioCache.play('q.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'r') {
                    if (audioCache.play('r.mp3') == audioCache.play('r.mp3')) {
                      audioCache.play('r.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 's') {
                    if (audioCache.play('s.mp3') == audioCache.play('s.mp3')) {
                      audioCache.play('s.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 't') {
                    if (audioCache.play('t.mp3') == audioCache.play('t.mp3')) {
                      audioCache.play('t.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'u') {
                    if (audioCache.play('u.mp3') == audioCache.play('u.mp3')) {
                      audioCache.play('u.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'v') {
                    if (audioCache.play('v.mp3') == audioCache.play('v.mp3')) {
                      audioCache.play('v.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'w') {
                    if (audioCache.play('w.mp3') == audioCache.play('w.mp3')) {
                      audioCache.play('w.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'x') {
                    if (audioCache.play('x.mp3') == audioCache.play('x.mp3')) {
                      audioCache.play('x.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'y') {
                    if (audioCache.play('y.mp3') == audioCache.play('y.mp3')) {
                      audioCache.play('y.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (alphabetical[index] == 'z') {
                    if (audioCache.play('z.mp3') == audioCache.play('z.mp3')) {
                      audioCache.play('z.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                },
                items: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height: 300.0,
                              width: 300.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Container(
                                            width: 250.0,
                                            height: 300.0,
                                            child: Image.asset(
                                                'images/english.jpeg'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "A",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "A - Apple",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/apple.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "B",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "B - Banana",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/fruits9.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "C",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "C - Cat",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/animal2.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "D",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "D - Donkey",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/animal6.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "E",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "E - Elephant",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/animal8.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "F",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "F - Fish",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/animal30.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('g.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "G",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "G - Guitar",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/guitar.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('h.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "H",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "H - Hen",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/animal3.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('i.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "I",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "I - Ice",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/ice.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('j.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "J",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "J - Jug",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/jug.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('k.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "K",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "K - kangaroo",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/kangaroo.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('l.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "L",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "L - Lion",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/animal17.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('m.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "M",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "M - Monkey",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/animal28.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('n.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "N",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "N - Nut",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/nut.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('o.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "O",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "O - Octopus",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/octopus.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('p.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "P",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "P - Panda",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/panda.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('q.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "Q",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "Q - Queen",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/queen.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('r.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "R",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "R - Robot",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/robot.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('s.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "S",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "S - Sun",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/sun.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('t.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "T",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "T - Tomato",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/fruits17.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('u.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "U",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "U - Umbrella",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/umbrella.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('v.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "V",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "V - Violin",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/violin.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('w.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "W",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "W - WaterMelon",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/waterme.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('x.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "X",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "X - Xylophone",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/xylophone.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('y.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "Y",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "Y - Yacht",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/yacht.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 09.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              audioCache.play('z.mp3');
                            },
                            child: Container(
                              height: 200.0,
                              width: 200.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: Stack(
                                children: <Widget>[
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            "Z",
                                            style: TextStyle(
                                                color: Colors.brown,
                                                fontSize: 120.0,
                                                fontFamily: 'Comic',
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Text(
                            "Z - Zebra",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            width: 80.0,
                            height: 80.0,
                            child: Image.asset('images/eng/animal12.png'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
