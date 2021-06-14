import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class BirdSlide extends StatefulWidget {
  @override
  _BirdSlideState createState() => _BirdSlideState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

class _BirdSlideState extends State<BirdSlide> {
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
          height: 450,
          // color: Colors.red[100],
          width: double.infinity,

          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
                  width: 320,
                  child: Column(children: [
                    SizedBox(
                      height: 65,
                    ),
                    SizedBox(
                        height: 150,
                        child: Image.asset('images/Birds/sparrow.png')),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Sparrow ",
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
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
                              audioCache.play('Sparrow.mp3');
                            },
                          ),
                        ),
                      ),
                    ),
                  ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    color: Colors.red[100],
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
                      height: 65,
                    ),
                    SizedBox(
                        height: 150,
                        child: Image.asset('images/Birds/hen.png')),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Hen ",
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
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
                              audioCache.play('Hen.mp3');
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
                      height: 65,
                    ),
                    SizedBox(
                        height: 150,
                        child: Image.asset('images/Birds/cock.png')),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Cock ",
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
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
                              audioCache.play('Cock.mp3');
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
                    SizedBox(
                      height: 65,
                    ),
                    SizedBox(
                        height: 130,
                        child: Image.asset('images/Birds/ducks.png')),
                    SizedBox(
                      height: 60,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Duck ",
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    SizedBox(
                      height: 45,
                      child: //Image.asset('Icons/Speaker.png'),
                          ClipOval(
                        child: Material(
                          color: Colors.brown[600], // button color
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
                              audioCache.play('Duck.mp3');
                            },
                          ),
                        ),
                      ),
                    ),
                    //SizedBox( height:40, child:Image.asset('Icons/pink-transparent-mic.png') ),
                  ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    color: Colors.brown[100],
                  )),
              Container(width: 70.0, color: Colors.white10),
              Container(
                  width: 320,
                  child: Column(children: [
                    SizedBox(
                      height: 65,
                    ),
                    SizedBox(
                        height: 150,
                        child: Image.asset('images/Birds/Swan.png')),
                    SizedBox(
                      height: 37,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Swan ",
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
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
                              audioCache.play('Swan.mp3');
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
                      height: 52,
                    ),
                    SizedBox(
                        height: 150,
                        child: Image.asset('images/Birds/pinguin.png')),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Penguin ",
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
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
                              audioCache.play('Penguin.mp3');
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
                        height: 150,
                        child: Image.asset('images/Birds/owl.png')),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Owl ",
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
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
                              audioCache.play('Owl.mp3');
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
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                        height: 150,
                        child: Image.asset('images/Birds/parrot.png')),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Parrot ",
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
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
                              audioCache.play('Parrot.mp3');
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
                      height: 38,
                    ),
                    SizedBox(
                        height: 150,
                        child: Image.asset('images/Birds/peacock.png')),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Peacock ",
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
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
                              audioCache.play('Peacock.mp3');
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
                      height: 46,
                    ),
                    SizedBox(
                        height: 150,
                        child: Image.asset('images/Birds/flamingo.png')),
                    SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Flamingo ",
                        style: TextStyle(
                          fontSize: 37,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
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
                              audioCache.play('Flamingo.mp3');
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
            ],
          ),
        ),
        //backgroundColor: Color.fromRGBO(255, 204, 204, 1.0) ,
        appBar: AppBar(
          centerTitle: true,
          title: Text("The Birds"),
        ));
  }
}
