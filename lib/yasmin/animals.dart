import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class AnimalSlider extends StatefulWidget {
  @override
  _AnimalSliderState createState() => _AnimalSliderState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

class _AnimalSliderState extends State<AnimalSlider> {
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
      title: 'animals',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Animals')),
        body: Container(
          height: 800,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                  width: 411,
                  color: Colors.grey[350],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 50),

                      Image.asset('images/animals/cat.png'),

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
                            height: 100,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Cat",
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
                  color: Colors.cyan[300],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/animals/dog.png'),
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
                            height: 100,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Dog",
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
                  color: Colors.grey[350],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      // SizedBox(height: 50),
                      Image.asset('images/animals/sheep.png'),
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
                            height: 100,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Sheep",
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
                  color: Colors.cyan[300],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/animals/horse.png'),
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
                            height: 100,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Horse",
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
                  color: Colors.grey[350],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/animals/elephant.png'),
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
                            height: 100,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Elephant",
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
                  color: Colors.cyan[300],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/animals/lion.png'),
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
                            height: 100,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Lion",
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
                  color: Colors.grey[350],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/animals/rabbit.png'),
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
                            height: 100,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Rabbit",
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
                  color: Colors.cyan[300],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/animals/monkey.png'),
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
                            height: 100,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Monkey",
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
                  color: Colors.grey[350],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/animals/tiger.png'),
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
                            height: 100,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Tiger",
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
                  color: Colors.cyan[300],
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      //SizedBox(height: 90),
                      Image.asset('images/animals/cow.png'),
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
                            height: 100,
                            child: FittedBox(
                              fit: BoxFit.contain,
                              child: Text(
                                "Cow",
                              ),
                            )),
                      ),
                      SizedBox(height: 50),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("Sunday.mp3");
                        },
                        elevation: 2.0,
                        //fillColor: Colors.white,
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
