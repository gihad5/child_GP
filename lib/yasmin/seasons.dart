import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class SeasonSlider extends StatefulWidget {
  @override
  _SeasonSliderState createState() => _SeasonSliderState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

class _SeasonSliderState extends State<SeasonSlider> {
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
      title: 'seasons',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Seasons')),
        body: Container(
          height: 800,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                  width: 411,
                  // color: Colors.cyan[100],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      // SizedBox(height: 1),
                      Image.asset('images/seasons/winter.jpg'),
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
                                "Winter",
                              ),
                            )),
                      ),
                      SizedBox(height: 30),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("Sunday.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white70,
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
                  //color: Colors.pinkAccent[100],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 60),
                      Image.asset('images/seasons/spring.png'),
                      SizedBox(
                        height: 50,
                      ),
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
                                "Spring",
                              ),
                            )),
                      ),
                      SizedBox(height: 30),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("Sunday.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white70,
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
                  // color: Colors.yellow[500],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/seasons/summer.jpg'),
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
                                "Summer",
                              ),
                            )),
                      ),
                      SizedBox(height: 30),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("Sunday.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white70,
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
                  // color: Colors.brown[200],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      // SizedBox(height: 50),
                      Image.asset('images/seasons/fall.jpg'),
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
                                "Autumn",
                              ),
                            )),
                      ),
                      SizedBox(height: 30),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("Sunday.mp3");
                        },
                        elevation: 2.0,
                        fillColor: Colors.white70,
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
