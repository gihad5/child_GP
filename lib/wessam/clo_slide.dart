import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class CloSlide extends StatefulWidget {
  @override
  _CloSlideState createState() => _CloSlideState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

class _CloSlideState extends State<CloSlide> {
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
            image: AssetImage('images/clo/ba.jpg'),
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
                  'images/clo/clo.png',
                  fit: BoxFit.cover,
                ),
                title: Text(
                  "Learning Clothes",
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
                    audioCache.play('dress.mp3');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Image.asset('images/clo/dress.png'),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "dress",
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
                    audioCache.play('jeaket.mp3');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Image.asset('images/clo/jaket.png'),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "jacket",
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
                    audioCache.play('shirt.mp3');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Image.asset('images/clo/shirt.png'),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "T-shirt",
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
                    audioCache.play('jeans.mp3');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Image.asset('images/clo/jeans.png'),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Jeans",
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
                    audioCache.play('cap.mp3');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Image.asset('images/clo/cap.png'),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Cap",
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
                GestureDetector(
                  onTap: () {
                    audioCache.play('boot.mp3');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Image.asset('images/clo/boot.png'),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Boots",
                                style: TextStyle(
                                    fontFamily: 'Comic',
                                    fontSize: 33.0,
                                    color: Colors.brown,
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
                    audioCache.play('hat.mp3');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Image.asset('images/clo/hat.png'),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Hat",
                                style: TextStyle(
                                    fontFamily: 'Comic',
                                    fontSize: 33.0,
                                    color: Colors.pink,
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
                    audioCache.play('claves.mp3');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Image.asset('images/clo/glaves.png'),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "gloves",
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
                    audioCache.play('skrit.mp3');
                  },
                  child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Image.asset('images/clo/skrit.png'),
                        ),
                        Container(
                          width: halfWidth,
                          height: 110,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "skirt",
                                style: TextStyle(
                                    fontFamily: 'Comic',
                                    fontSize: 33.0,
                                    color: Colors.purple,
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
