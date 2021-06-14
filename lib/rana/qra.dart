import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class QuranSlider extends StatefulWidget {
  @override
  _QuranSliderState createState() => _QuranSliderState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

class _QuranSliderState extends State<QuranSlider> {
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
    return Scaffold(
        body: Container(
          margin: EdgeInsets.fromLTRB(20, 100, 20, 115),
          height: 430,
          // color: Colors.red[100],
          width: double.infinity,

          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                  width: 320,
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        height: 300,
                        width: 350,
                        child: Image.asset('images/kuraan/alfathah.jpg')),
                    // SizedBox( height:30, ),
                    //SizedBox( height:50 ,child: Text("  ",style: TextStyle(fontSize: 37, fontWeight:FontWeight.bold,color: Colors.black54, ),),),
                    //SizedBox( height:24, ),
                    SizedBox(
                      height: 45,
                      child: //Image.asset('Icons/Speaker.png'),
                          ClipOval(
                        child: Material(
                          color: Colors.green[800], // button color
                          child: InkWell(
                            splashColor: Colors.blue[100], // inkwell color
                            child: SizedBox(
                                width: 45,
                                height: 25,
                                child: Icon(
                                  Icons.campaign,
                                  color: Colors.white,
                                  size: 30,
                                )),
                            onTap: () {
                              audioCache.play('fata.mp3');
                            },
                          ),
                        ),
                      ),
                    ),
                    //SizedBox( height:40, child:Image.asset('Icons/pink-transparent-mic.png') ),
                  ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    color: Colors.green[100],
                  )
                  // width: 160.0,
                  //color: Colors.red,
                  ),
              Container(
                width: 70.0,
                color: Colors.white10,
              ),
              Container(
                  width: 320,
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        height: 300,
                        width: 350,
                        child: Image.asset('images/qurran/alekhlas.jpg')),
                    //SizedBox( height:30, ),
                    //SizedBox( height:50 ,child: Text(" Hen ",style: TextStyle(fontSize: 37, fontWeight:FontWeight.bold,color: Colors.black54, ),),),
                    //SizedBox( height:17, ),
                    SizedBox(
                      height: 45,
                      child: //Image.asset('Icons/Speaker.png'),
                          ClipOval(
                        child: Material(
                          color: Colors.pink[600], // button color
                          child: InkWell(
                            splashColor: Colors.blue[100], // inkwell color
                            child: SizedBox(
                                width: 45,
                                height: 25,
                                child: Icon(
                                  Icons.campaign,
                                  color: Colors.white,
                                  size: 30,
                                )),
                            onTap: () {
                              audioCache.play('ekl.mp3');
                            },
                          ),
                        ),
                      ),
                    ),
                    //SizedBox( height:40, child:Image.asset('Icons/pink-transparent-mic.png') ),
                  ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    color: Colors.red[100],
                  )),
              Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 320,
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                        height: 300,
                        width: 340,
                        child: Image.asset('images/qurran/alfalaq.jpg')),
                    // SizedBox( height:40, ),
                    //SizedBox( height:50 ,child: Text(" Cock ",style: TextStyle(fontSize: 37, fontWeight:FontWeight.bold,color: Colors.black54, ),),),
                    // SizedBox( height:17, ),
                    SizedBox(
                      height: 45,
                      child: //Image.asset('Icons/Speaker.png'),
                          ClipOval(
                        child: Material(
                          color: Colors.yellow[700], // button color
                          child: InkWell(
                            splashColor: Colors.blue[100], // inkwell color
                            child: SizedBox(
                                width: 45,
                                height: 25,
                                child: Icon(
                                  Icons.campaign,
                                  color: Colors.white,
                                  size: 30,
                                )),
                            onTap: () {
                              audioCache.play('fala.mp3');
                            },
                          ),
                        ),
                      ),
                    ),
                    //SizedBox( height:40, child:Image.asset('Icons/pink-transparent-mic.png') ),
                  ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    color: Colors.yellow[100],
                  )),
              Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 320,
                  child: Column(children: [
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 300,
                      width: 350,
                      child: Image.asset('images/qurran/alnas.jpg'),
                    ),
                    // SizedBox( height:60, ),
                    //SizedBox( height:50 ,child: Text(" Duck ",style: TextStyle(fontSize: 37, fontWeight:FontWeight.bold,color: Colors.black54, ),),),
                    // SizedBox( height:17, ),
                    SizedBox(
                      height: 45,
                      child: //Image.asset('Icons/Speaker.png'),
                          ClipOval(
                        child: Material(
                          color: Colors.purple[700], // button color
                          child: InkWell(
                            splashColor: Colors.blue[100], // inkwell color
                            child: SizedBox(
                                width: 45,
                                height: 25,
                                child: Icon(
                                  Icons.campaign,
                                  color: Colors.white,
                                  size: 30,
                                )),
                            onTap: () {
                              audioCache.play('nas.mp3');
                            },
                          ),
                        ),
                      ),
                    ),
                    //SizedBox( height:40, child:Image.asset('Icons/pink-transparent-mic.png') ),
                  ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    color: Colors.deepPurple[100],
                  )),
            ],
          ),
        ),

        // backgroundColor: Color.fromRGBO(255, 204, 204, 1.0) ,
        appBar: AppBar(
          centerTitle: true,
          title: Text("القرآن الكريم", textAlign: TextAlign.center),
        ));
  }
}
