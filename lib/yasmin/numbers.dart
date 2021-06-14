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
        appBar: AppBar(centerTitle: true, title: Text('Numbers')),
        body: Container(
          height: 800,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                  width: 411,
                  color: Colors.red[100],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 50),

                      Image.asset('images/numbers/one.png'),

                      SizedBox(height: 50),
                      Divider(
                        color: Colors.indigo,
                        thickness: 10,
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
                      SizedBox(height: 50),

                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("Sunday.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
              Container(
                  width: 411,
                  color: Colors.amber[400],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/numbers/two.png'),
                      SizedBox(height: 50),
                      Divider(
                        color: Colors.indigo,
                        thickness: 10,
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
                      SizedBox(height: 50),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("Sunday.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
              Container(
                  width: 411,
                  color: Colors.cyan[200],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      // SizedBox(height: 50),
                      Image.asset('images/numbers/three.png'),
                      SizedBox(height: 50),
                      Divider(
                        color: Colors.indigo,
                        thickness: 10,
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
                      SizedBox(height: 50),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("Sunday.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
              Container(
                  width: 411,
                  color: Colors.teal[300],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/numbers/four.png'),
                      SizedBox(height: 50),
                      Divider(
                        color: Colors.indigo,
                        thickness: 10,
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
                      SizedBox(height: 50),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("Sunday.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
              Container(
                  width: 411,
                  color: Colors.purple[200],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/numbers/five.png'),
                      SizedBox(height: 50),
                      Divider(
                        color: Colors.indigo,
                        thickness: 10,
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
                      SizedBox(height: 50),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("Sunday.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
              Container(
                  width: 411,
                  color: Colors.pink[100],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/numbers/six.png'),
                      SizedBox(height: 50),
                      Divider(
                        color: Colors.indigo,
                        thickness: 10,
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
                      SizedBox(height: 50),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("Sunday.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
              Container(
                  width: 411,
                  color: Colors.purple[200],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/numbers/seven.png'),
                      SizedBox(height: 50),
                      Divider(
                        color: Colors.indigo,
                        thickness: 10,
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
                      SizedBox(height: 50),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("Sunday.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
              Container(
                  width: 411,
                  color: Colors.cyan[200],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/numbers/eight.png'),
                      SizedBox(height: 50),
                      Divider(
                        color: Colors.indigo,
                        thickness: 10,
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
                      SizedBox(height: 50),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("Sunday.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
              Container(
                  width: 411,
                  color: Colors.amber[400],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/numbers/nine.png'),
                      SizedBox(height: 50),
                      Divider(
                        color: Colors.indigo,
                        thickness: 10,
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
                      SizedBox(height: 50),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("Sunday.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 35.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      ),
                    ],
                  )),
              Container(
                  width: 411,
                  color: Colors.cyan[200],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/numbers/ten.png'),
                      SizedBox(height: 50),
                      Divider(
                        color: Colors.indigo,
                        thickness: 10,
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
                      SizedBox(height: 50),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("Sunday.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.volume_up,
                          color: Colors.red,
                          size: 35.0,
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
