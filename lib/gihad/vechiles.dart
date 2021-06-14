import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class TransportSlide extends StatefulWidget {
  @override
  _TransportSlideState createState() => _TransportSlideState();
}

AudioPlayer audioPlayer = AudioPlayer(mode: PlayerMode.LOW_LATENCY);

class _TransportSlideState extends State<TransportSlide> {
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
          /*  decoration: BoxDecoration(
                   image: DecorationImage(
                        image: AssetImage("BackgroundQuiz/Back5.png"),
                        fit: BoxFit.cover)),*/
          margin: EdgeInsets.fromLTRB(20, 115, 20, 115),
          height: 500,
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
                        height: 130,
                        child: Image.asset('images/Vehicles/bicycle.png')),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Bicycle ",
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
                          color: Colors.red[600], // button color
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
                              audioCache.play('Bicycle.mp3');
                            },
                          ),
                        ),
                      ),
                    ),
                  ]),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    color: Colors.black12,
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
                      height: 64,
                    ),
                    SizedBox(
                        height: 130,
                        width: 250,
                        child: Image.asset('images/Vehicles/scooter.png')),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Scooter ",
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
                          color: Colors.red[600], // button color
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
                              audioCache.play('Scooter.mp3');
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
                      height: 57,
                    ),
                    SizedBox(
                        height: 130,
                        width: 250,
                        child: Image.asset('images/Vehicles/car.png')),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Car ",
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
                          color: Colors.yellow[600], // button color
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
                              audioCache.play('Car.mp3');
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
                      height: 60,
                    ),
                    SizedBox(
                        height: 130,
                        child: Image.asset('images/Vehicles/policecar.png')),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Police Car ",
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
                          color: Colors.orange[500], // button color
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
                              audioCache.play('Police Car.mp3');
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
                      height: 85,
                    ),
                    SizedBox(
                        height: 130,
                        width: 280,
                        child: Image.asset('images/Vehicles/bus.png')),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Bus ",
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
                          color: Colors.black, // button color
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
                              audioCache.play('Bus.mp3');
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
                      height: 88,
                    ),
                    SizedBox(
                        height: 120,
                        width: 250,
                        child: Image.asset('images/Vehicles/firetruck.png')),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Fire Truck ",
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
                      height: 22,
                      child: //Image.asset('Icons/Speaker.png'),
                          ClipOval(
                        child: Material(
                          color: Colors.red[600], // button color
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
                              audioCache.play('Fire Truck.mp3');
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
                      height: 27,
                    ),
                    SizedBox(
                        height: 200,
                        width: 280,
                        child: Image.asset('images/Vehicles/train.png')),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Train ",
                        style: TextStyle(
                          fontSize: 30,
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
                          color: Colors.red[600], // button color
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
                              audioCache.play('Train.mp3');
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
                      height: 73,
                    ),
                    SizedBox(
                        height: 130,
                        child: Image.asset('images/Vehicles/ship.png')),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Ship ",
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
                          color: Colors.red[600], // button color
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
                              audioCache.play('Ship.mp3');
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
                        height: 120,
                        child: Image.asset('images/Vehicles/airplane.png')),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Airplane ",
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
                              audioCache.play('Airplane.mp3');
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
                      height: 60,
                    ),
                    SizedBox(
                        height: 130,
                        child: Image.asset('images/Vehicles/rocket.png')),
                    SizedBox(
                      height: 50,
                    ),
                    SizedBox(
                      height: 50,
                      child: Text(
                        " Rocket ",
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
                      height: 30,
                      child: //Image.asset('Icons/Speaker.png'),
                          ClipOval(
                        child: Material(
                          color: Colors.orange[600], // button color
                          child: InkWell(
                            splashColor: Colors.blue[100], // inkwell color
                            child: SizedBox(
                                width: 45,
                                height: 200,
                                child: Icon(
                                  Icons.campaign,
                                  color: Colors.white,
                                  size: 30,
                                )),
                            onTap: () {
                              audioCache.play('Rocket.mp3');
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
            ],
          ),
        ),
        //backgroundColor: Color.fromRGBO(255, 204, 204, 1.0) ,
        appBar: AppBar(
          centerTitle: true,
          title: Text("Vehicles"),
        ));
  }
}
