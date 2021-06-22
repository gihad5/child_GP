import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class NumberSlider extends StatefulWidget {
  @override
  _NumberSliderState createState() => _NumberSliderState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

class _NumberSliderState extends State<NumberSlider> {
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

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'numbers',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('images/arrow.png'),
        ),
        backgroundColor: Colors.teal[300],
          centerTitle: true, 
          title: Text('Numbers')),

        body: Container(
          height: 800,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                  width: 360,
                  color: Colors.red[100],
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),

                      Image.asset('images/numbers/one.png'),

                      SizedBox(height: 70),
                      Divider(
                        color: Colors.teal[300],
                        thickness: 7,
                      ),
                      SizedBox(height: 50),

                      Container(
                        //color: Colors.white60,
                        child: SizedBox(
                            width: 100,
                            height: 50,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "One",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),

                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("one.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
                  Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 360,
                  color: Colors.amber[100],
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/numbers/two.png'),
                      SizedBox(height: 70),
                      Divider(
                        color: Colors.teal[300],
                        thickness: 7,
                      ),
                      SizedBox(height: 50),
                      Container(
                        //  color: Colors.white60,
                        child: SizedBox(
                            width: 100,
                            height: 50,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Two",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("two.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
                  Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 360,
                  color: Colors.cyan[100],
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/numbers/three.png'),
                      SizedBox(height: 70),
                      Divider(
                        color: Colors.teal[300],
                        thickness: 7,
                      ),
                      SizedBox(height: 50),

                      Container(
                        // color: Colors.white60,
                        child: SizedBox(
                            width: 100,
                            height: 50,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Three",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("three.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
                  Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 360,
                  color: Colors.teal[100],
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/numbers/four.png'),
                      SizedBox(height: 70),
                      Divider(
                        color: Colors.teal[300],
                        thickness: 7,
                      ),
                      SizedBox(height: 50),
                      Container(
                        // color: Colors.white60,
                        child: SizedBox(
                            width: 100,
                            height: 50,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Four",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("four.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
                  Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 360,
                  color: Colors.purple[100],
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/numbers/five.png'),
                      SizedBox(height: 70),
                      Divider(
                        color: Colors.teal[300],
                        thickness: 7,
                      ),
                      SizedBox(height: 50),
                      Container(
                        // color: Colors.white60,
                        child: SizedBox(
                            width: 100,
                            height: 50,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Five",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("five.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
                  Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 360,
                  color: Colors.pink[100],
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/numbers/six.png'),
                      SizedBox(height: 70),
                      Divider(
                        color: Colors.teal[300],
                        thickness: 7,
                      ),
                      SizedBox(height: 50),
                      Container(
                        // color: Colors.white60,
                        child: SizedBox(
                            width: 100,
                            height: 50,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Six",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("six.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
                  Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 360,
                  color: Colors.yellow[100],
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/numbers/seven.png'),
                      SizedBox(height: 70),
                      Divider(
                        color: Colors.teal[300],
                        thickness: 7,
                      ),
                      SizedBox(height: 50),
                      Container(
                        //  color: Colors.white60,
                        child: SizedBox(
                            width: 100,
                            height: 50,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Seven",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("seven.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
                  Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 360,
                  color: Colors.cyan[100],
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/numbers/eight.png'),
                      SizedBox(height: 70),
                      Divider(
                        color: Colors.teal[300],
                        thickness: 7,
                      ),
                      SizedBox(height: 50),
                      Container(
                        //color: Colors.white60,
                        child: SizedBox(
                            width: 100,
                            height: 50,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Eight",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("eight.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
                  Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 360,
                  color: Colors.amber[400],
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/numbers/nine.png'),
                      SizedBox(height: 70),
                      Divider(
                        color: Colors.teal[300],
                        thickness: 7,
                      ),
                      SizedBox(height: 50),
                      Container(
                        // color: Colors.white60,
                        child: SizedBox(
                            width: 100,
                            height: 50,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Nine",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("nine.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
                  Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 360,
                  color: Colors.cyan[100],
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/numbers/ten.png'),
                      SizedBox(height: 70),
                      Divider(
                        color: Colors.teal[300],
                        thickness: 7,
                      ),
                      SizedBox(height: 50),
                      Container(
                        // color: Colors.white60,
                        child: SizedBox(
                            width: 100,
                            height: 50,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Ten",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("ten.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 30.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
