import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class DaySlide extends StatefulWidget {
  @override
  _DaySlideState createState() => _DaySlideState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

class _DaySlideState extends State<DaySlide> {
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
          height: 470,
          // color: Colors.red[100],
          width: double.infinity,

          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                  width: 320,
                  child: Column(children: [
                    //SizedBox( height:5, ),
                    SizedBox(
                        height: 300,
                        width: 350,
                        child: Image.asset('images/Week-days/saturday.png')),
                    // SizedBox( height:30, ),
                    //SizedBox( height:50 ,child: Text("  ",style: TextStyle(fontSize: 37, fontWeight:FontWeight.bold,color: Colors.black54, ),),),
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
                              audioCache.play('Saturday.mp3');
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
                    // SizedBox( height:70, ),
                    SizedBox(
                        height: 300,
                        width: 350,
                        child: Image.asset('images/Week-days/sunday.png')),
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
                              audioCache.play('Sunday.mp3');
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
                    //SizedBox( height:70, ),
                    SizedBox(
                        height: 300,
                        width: 340,
                        child: Image.asset('images/Week-days/monday.png')),
                    // SizedBox( height:40, ),
                    //SizedBox( height:50 ,child: Text(" Cock ",style: TextStyle(fontSize: 37, fontWeight:FontWeight.bold,color: Colors.black54, ),),),
                    // SizedBox( height:17, ),
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
                              audioCache.play('Monday.mp3');
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
                  )),
              Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 300,
                  child: Column(children: [
                    //SizedBox( height:70, ),
                    SizedBox(
                      height: 300,
                      width: 350,
                      child: Image.asset('images/Week-days/tuesday.png'),
                    ),
                    // SizedBox( height:60, ),
                    //SizedBox( height:50 ,child: Text(" Duck ",style: TextStyle(fontSize: 37, fontWeight:FontWeight.bold,color: Colors.black54, ),),),
                    // SizedBox( height:17, ),
                    SizedBox(
                      height: 45,
                      child: //Image.asset('Icons/Speaker.png'),
                          ClipOval(
                        child: Material(
                          color: Colors.blue[800], // button color
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
                              audioCache.play('Tuesday.mp3');
                            },
                          ),
                        ),
                      ),
                    ),
                    //SizedBox( height:40, child:Image.asset('Icons/pink-transparent-mic.png') ),
                  ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    color: Colors.blue[100],
                  )),
              Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 320,
                  child: Column(children: [
                    //SizedBox( height:45, ),
                    SizedBox(
                        height: 300,
                        width: 350,
                        child: Image.asset('images/Week-days/wednesday.png')),
                    // SizedBox( height:25, ),
                    //SizedBox( height:50 ,child: Text(" Bat ",style: TextStyle(fontSize: 37, fontWeight:FontWeight.bold,color: Colors.black54, ),),),
                    //SizedBox( height:17, ),
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
                              audioCache.play('Wednesday.mp3');
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
                  )),
              Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 320,
                  child: Column(children: [
                    // SizedBox( height:60, ),
                    SizedBox(
                        height: 300,
                        width: 350,
                        child: Image.asset('images/Week-days/thursday.png')),
                    //SizedBox( height:40, ),
                    //SizedBox( height:50 ,child: Text(" Penguin ",style: TextStyle(fontSize: 37, fontWeight:FontWeight.bold,color: Colors.black54, ),),),
                    // SizedBox( height:17, ),
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
                              audioCache.play('Thursday.mp3');
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
                    // SizedBox( height:60, ),
                    SizedBox(
                        height: 300,
                        width: 350,
                        child: Image.asset('images/Week-days/friday.png')),
                    // SizedBox( height:40, ),
                    // SizedBox( height:50 ,child: Text(" Owl ",style: TextStyle(fontSize: 37, fontWeight:FontWeight.bold,color: Colors.black54, ),),),
                    //  SizedBox( height:17, ),
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
                              audioCache.play('Friday.mp3');
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
            ],
          ),
        ),

        // backgroundColor: Color.fromRGBO(255, 204, 204, 1.0) ,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Week days", textAlign: TextAlign.center),
        ));
  }
}
