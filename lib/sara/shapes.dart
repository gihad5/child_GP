import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class ShapeSlider extends StatefulWidget {
  @override
  _ShapeSliderState createState() => _ShapeSliderState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

class _ShapeSliderState extends State<ShapeSlider> {
  AudioPlayer advancePlayer;
  AudioCache audioCache;
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
    return Stack(
      children: <Widget>[
        /*Image.asset(
          "images/u.jpg",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),*/

        Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Image.asset('images/arrow.png'),
            ),
            backgroundColor: Colors.lightBlueAccent,
            elevation: 0.0,
            centerTitle: true,
            title: Text(
              "Shapes",
              style: TextStyle(fontFamily: 'Comic'),
            ),
          ),
          backgroundColor: Colors.white,
          body: Center(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 500.0,
                    width: double.infinity,
                    child: CarouselSlider(
                      items: [
                        Container(
                            // height: 800,
                            width: 411,
                            // color: Colors.cyan[100],
                            // padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                // SizedBox(height: 1),
                                SizedBox(
                                  height: 147.0,
                                  child: Image.asset('images/shape/rec.jpg'),
                                ),
                                //SizedBox(height: 1),

                                //SizedBox(height: 1),
                                RawMaterialButton(
                                  onPressed: () {
                                    audioCache.play("rec.mp3");
                                  },
                                  elevation: 2.0,
                                  fillColor: Colors.white70,
                                  child: Icon(
                                    Icons.volume_up,
                                    color: Colors.red,
                                    size: 25.0,
                                  ),
                                  padding: EdgeInsets.all(15.0),
                                  shape: CircleBorder(),
                                ),
                              ],
                            )),
                        Container(
                            // height: 800,
                            width: 411,
                            // color: Colors.cyan[100],
                            // padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                // SizedBox(height: 1),
                                SizedBox(
                                  height: 147.0,
                                  child: Image.asset('images/shape/star.jpg'),
                                ),
                                //SizedBox(height: 1),

                                //SizedBox(height: 1),
                                RawMaterialButton(
                                  onPressed: () {
                                    audioCache.play("star.mp3");
                                  },
                                  elevation: 2.0,
                                  fillColor: Colors.white70,
                                  child: Icon(
                                    Icons.volume_up,
                                    color: Colors.red,
                                    size: 25.0,
                                  ),
                                  padding: EdgeInsets.all(15.0),
                                  shape: CircleBorder(),
                                ),
                              ],
                            )),
                        Container(
                            // height: 800,
                            width: 411,
                            // color: Colors.cyan[100],
                            // padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                // SizedBox(height: 1),
                                SizedBox(
                                  height: 147.0,
                                  child: Image.asset('images/shape/square.jpg'),
                                ),
                                //SizedBox(height: 1),

                                //SizedBox(height: 1),
                                RawMaterialButton(
                                  onPressed: () {
                                    audioCache.play("square.mp3");
                                  },
                                  elevation: 2.0,
                                  fillColor: Colors.white70,
                                  child: Icon(
                                    Icons.volume_up,
                                    color: Colors.red,
                                    size: 25.0,
                                  ),
                                  padding: EdgeInsets.all(15.0),
                                  shape: CircleBorder(),
                                ),
                              ],
                            )),
                        Container(
                            // height: 800,
                            width: 411,
                            // color: Colors.cyan[100],
                            // padding: EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: <Widget>[
                                // SizedBox(height: 1),
                                SizedBox(
                                  height: 147.0,
                                  child:
                                      Image.asset('images/shape/triangle.jpg'),
                                ),
                                //SizedBox(height: 1),

                                //SizedBox(height: 1),
                                RawMaterialButton(
                                  onPressed: () {
                                    audioCache.play("circle.mp3");
                                  },
                                  elevation: 2.0,
                                  fillColor: Colors.white70,
                                  child: Icon(
                                    Icons.volume_up,
                                    color: Colors.red,
                                    size: 25.0,
                                  ),
                                  padding: EdgeInsets.all(15.0),
                                  shape: CircleBorder(),
                                ),
                              ],
                            )),
                      ],
                    )),
              ],
            ),
          )),
        ),
      ],
    );
  }
}
