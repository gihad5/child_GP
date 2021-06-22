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
        appBar: AppBar(
          leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset('images/arrow.png'),
        ),
        backgroundColor: Colors.teal[300],
        centerTitle: true, 
        title: Text('Animals')),

        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage('images/coq.jpg'),
            fit: BoxFit.fill,
          )),
          height: 800,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                  width: 360,
                  color: Colors.white12,
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),

                      Image.asset('images/animals/cat.png'),

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
                                "Cat",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),

                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("acat.mp3");
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
                  color: Colors.white12,
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/animals/dog.png'),
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
                                "Dog",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("adog.mp3");
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
                  color: Colors.white12,
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/animals/sheep.png'),
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
                                "Sheep",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("asheep.mp3");
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
                  color: Colors.white12,
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/animals/horse.png'),
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
                                "Horse",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("ahorse.mp3");
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
                  color: Colors.white12,
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/animals/elephant.png'),
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
                                "Elephant",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("aelephant.mp3");
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
                  color: Colors.white12,
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/animals/lion.png'),
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
                                "Lion",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("alion.mp3");
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
                  color: Colors.white12,
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/animals/rabbit.png'),
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
                                "Rabbit",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("arabbit.mp3");
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
                  color: Colors.white12,
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/animals/monkey.png'),
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
                                "Monkey",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("amonkey.mp3");
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
                  color: Colors.white12,
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/animals/tiger.png'),
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
                                "Tiger",
                              ),
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("atiger.mp3");
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
                  color: Colors.white12,
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      SizedBox(height: 70),
                      Image.asset('images/animals/cow.png'),
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
                                "Cow",
                              ),
                              
                            )),
                      ),
                      SizedBox(height: 40),
                      RawMaterialButton(
                        onPressed: () {
                          audioCache.play("acow.mp3");
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
