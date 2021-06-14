import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class BodyP extends StatefulWidget {
  @override
  _BodyPState createState() => _BodyPState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

class _BodyPState extends State<BodyP> {
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
          margin: EdgeInsets.fromLTRB(20, 115, 20, 115),
          height: 750,
          // color: Colors.red[100],
          width: double.infinity,

          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                width: 70.0,
                color: Colors.white10,
              ),
              Container(
                  width: 320,
                  child: Column(children: [
                    SizedBox(
                      height: 64,
                    ),
                    SizedBox(
                        height: 180,
                        child: Image.asset('images/Body Parts/Hair.png')),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Hair ",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 25,
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
                                    size: 25,
                                  )),
                              onTap: () {
                                audioCache.play('Hair.mp3');
                              }),
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
                      height: 80,
                    ),
                    SizedBox(
                        height: 140,
                        child: Image.asset('images/Body Parts/Eye1.png')),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Eye ",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 25,
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
                                    size: 25,
                                  )),
                              onTap: () {
                                audioCache.play('Eyes.mp3');
                              }),
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
                    SizedBox(
                      height: 75,
                    ),
                    SizedBox(
                        height: 160,
                        child: Image.asset('images/Body Parts/Nose1.png')),
                    SizedBox(
                      height: 37,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Nose ",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 25,
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
                                  size: 25,
                                )),
                            onTap: () {
                              audioCache.play('Nose.mp3');
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
                      height: 72,
                    ),
                    SizedBox(
                        height: 150,
                        child: Image.asset('images/Body Parts/Mouth.png')),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Mouth ",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 25,
                      child: //Image.asset('Icons/Speaker.png'),
                          ClipOval(
                        child: Material(
                          color: Colors.red[800], // button color
                          child: InkWell(
                            splashColor: Colors.blue[100], // inkwell color
                            child: SizedBox(
                                width: 45,
                                height: 25,
                                child: Icon(
                                  Icons.campaign,
                                  color: Colors.white,
                                  size: 25,
                                )),
                            onTap: () {
                              audioCache.play('Mouth.mp3');
                            },
                          ),
                        ),
                      ),
                    ),
                    //SizedBox( height:40, child:Image.asset('Icons/pink-transparent-mic.png') ),
                  ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    color: Colors.black12,
                  )),
              Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 320,
                  child: Column(children: [
                    SizedBox(
                      height: 75,
                    ),
                    SizedBox(
                        height: 150,
                        child: Image.asset('images/Body Parts/Tongue.png')),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Tongue ",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 25,
                      child: //Image.asset('Icons/Speaker.png'),
                          ClipOval(
                        child: Material(
                          color: Colors.red[800], // button color
                          child: InkWell(
                            splashColor: Colors.blue[100], // inkwell color
                            child: SizedBox(
                                width: 45,
                                height: 25,
                                child: Icon(
                                  Icons.campaign,
                                  color: Colors.white,
                                  size: 25,
                                )),
                            onTap: () {
                              audioCache.play('Tongue.mp3');
                            },
                          ),
                        ),
                      ),
                    ),
                    //SizedBox( height:40, child:Image.asset('Icons/pink-transparent-mic.png') ),
                  ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    color: Colors.black12,
                  )),
              Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 320,
                  child: Column(children: [
                    SizedBox(
                      height: 76,
                    ),
                    SizedBox(
                        height: 140,
                        child: Image.asset('images/Body Parts/Teeth.png')),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Teeth ",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 25,
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
                                  size: 25,
                                )),
                            onTap: () {
                              audioCache.play('Teeth.mp3');
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
                    SizedBox(
                      height: 55,
                    ),
                    SizedBox(
                        height: 160,
                        child: Image.asset('images/Body Parts/Ear2.png')),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Ears ",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 25,
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
                                  size: 25,
                                )),
                            onTap: () {
                              audioCache.play('Ears.mp3');
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
                      height: 50,
                    ),
                    SizedBox(
                        height: 200,
                        child: Image.asset('images/Body Parts/Hand.png')),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Hand ",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 25,
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
                                  size: 25,
                                )),
                            onTap: () {
                              audioCache.play('Hands.mp3');
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
                      height: 53,
                    ),
                    SizedBox(
                        height: 170,
                        child: Image.asset('images/Body Parts/Foot1.jpg')),
                    SizedBox(
                      height: 48,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Foot ",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 25,
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
                                  size: 25,
                                )),
                            onTap: () {
                              audioCache.play('Feet.mp3');
                            },
                          ),
                        ),
                      ),
                    ),
                    //SizedBox( height:40, child:Image.asset('Icons/pink-transparent-mic.png') ),
                  ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    color: Colors.white,
                  )),
              Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 320,
                  child: Column(children: [
                    SizedBox(
                      height: 65,
                    ),
                    SizedBox(
                        height: 160,
                        child: Image.asset('images/Body Parts/Leg2.png')),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Leg ",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    SizedBox(
                      height: 25,
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
                                  size: 25,
                                )),
                            onTap: () {
                              audioCache.play('Legs.mp3');
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
            ],
          ),
        ),
        //backgroundColor: Color.fromRGBO(255, 204, 204, 1.0) ,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Body Parts"),
        ));
  }
}
