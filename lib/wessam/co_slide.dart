import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class CoSlide extends StatefulWidget {
  @override
  _CoSlideState createState() => _CoSlideState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

class _CoSlideState extends State<CoSlide> {
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
    final halfWidth = MediaQuery.of(context).size.width / 3;

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            /* image: DecorationImage(
            //image: AssetImage('images/clo/ba.jpg'),
          
            fit: BoxFit.cover,
          ),*/
            ),
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              leading: IconButton(
                icon: Image.asset('images/alp/arrow2.png'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              expandedHeight: 160.0,
              floating: true,
              pinned: true,
              snap: true,
              titleSpacing: 10,
              elevation: 10,
              forceElevated: true,
              backgroundColor: Colors.purple[200],
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(
                  'images/co/co.jpg',
                  fit: BoxFit.cover,
                ),
                title: Text(
                  "Learning Colors",
                  style: TextStyle(
                    fontFamily: 'Comic',
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                SizedBox(
                  height: 10.0,
                ),
                GestureDetector(
                  onTap: () {
                    audioCache.play('red.mp3');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Image.asset('images/co/red.png'),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "red",
                                style: TextStyle(
                                    fontFamily: 'Comic',
                                    fontSize: 33.0,
                                    color: Colors.orange,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.play_circle_filled,
                                  size: 54.0,
                                  color: Colors.pink,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    audioCache.play('yellow.mp3');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Image.asset('images/co/yellow.png'),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "yellow",
                                style: TextStyle(
                                    fontFamily: 'Comic',
                                    fontSize: 33.0,
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.play_circle_filled,
                                  size: 54.0,
                                  color: Colors.pink,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    audioCache.play('green.mp3');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Image.asset('images/co/green.png'),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "green",
                                style: TextStyle(
                                    fontFamily: 'Comic',
                                    fontSize: 33.0,
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.play_circle_filled,
                                  size: 54.0,
                                  color: Colors.pink,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    audioCache.play('blue.mp3');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Image.asset('images/co/blue.png'),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "blue",
                                style: TextStyle(
                                    fontFamily: 'Comic',
                                    fontSize: 33.0,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.play_circle_filled,
                                  size: 54.0,
                                  color: Colors.pink,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    audioCache.play('orange.mp3');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Image.asset('images/co/orange.png'),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "orange",
                                style: TextStyle(
                                    fontFamily: 'Comic',
                                    fontSize: 33.0,
                                    color: Colors.yellow,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.play_circle_filled,
                                  size: 54.0,
                                  color: Colors.pink,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
