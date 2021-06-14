import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class AlpSlider extends StatefulWidget {
  @override
  _AlpSliderState createState() => _AlpSliderState();
}

class _AlpSliderState extends State<AlpSlider> {
  List<String> word = [
    'الحروف العربية',
    'أ',
    'ب',
    'ت',
    'ث',
    'ج',
    'ح',
    'خ',
    'د',
    'ذ',
    'ر',
    'ز',
    'س',
    'ش',
    'ص',
    'ض',
    'ط',
    'ظ',
    'ع',
    'غ',
    'ف',
    'ق',
    'ك',
    'م',
    'ن',
    'ه',
    'و',
    'ي'
  ];

  AudioPlayer advancePlayer;
  AudioCache audioCache;

  @override
  void initState() {
    super.initState();
    initPlayer();
  }

  void initPlayer() {
    advancePlayer = AudioPlayer();
    audioCache = AudioCache(fixedPlayer: advancePlayer);

    advancePlayer.durationHandler = (d) => setState(() {});
  }

  //String localFilePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          " الحروف العربية",
          style: TextStyle(fontFamily: 'Comic'),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/u.jpg'),
          fit: BoxFit.cover,
        )),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CarouselSlider(
                height: 400.0,
                initialPage: 0,
                enlargeCenterPage: true,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(milliseconds: 2500),
                autoPlayInterval: Duration(milliseconds: 4500),
                scrollDirection: Axis.horizontal,
                onPageChanged: (index) {
                  if (word[index] == 'الحروف العربية') {}
                  if (word[index] == 'أ') {
                    if (audioCache.play('aa.mp3') ==
                        audioCache.play('aa.mp3')) {
                      audioCache.play('aa.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ب') {
                    if (audioCache.play('bb.mp3') ==
                        audioCache.play('bb.mp3')) {
                      audioCache.play('bb.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ت') {
                    if (audioCache.play('tt.mp3') ==
                        audioCache.play('tt.mp3')) {
                      audioCache.play('tt.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ث') {
                    if (audioCache.play('ss.mp3') ==
                        audioCache.play('ss.mp3')) {
                      audioCache.play('ss.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ج') {
                    if (audioCache.play('gg.mp3') ==
                        audioCache.play('gg.mp3')) {
                      audioCache.play('gg.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ح') {
                    if (audioCache.play('hh.mp3') ==
                        audioCache.play('hh.mp3')) {
                      audioCache.play('hh.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'خ') {
                    if (audioCache.play('خروف.mp3') ==
                        audioCache.play('خروف.mp3')) {
                      audioCache.play('خروف.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'د') {
                    if (audioCache.play('ديك.mp3') ==
                        audioCache.play('ديك.mp3')) {
                      audioCache.play('ديك.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ذ') {
                    if (audioCache.play('ذئب.mp3') ==
                        audioCache.play('ذئب.mp3')) {
                      audioCache.play('ذئب.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ر') {
                    if (audioCache.play('رقون.mp3') ==
                        audioCache.play('رقون.mp3')) {
                      audioCache.play('رقون.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ز') {
                    if (audioCache.play('زرافة.mp3') ==
                        audioCache.play('زرافة.mp3')) {
                      audioCache.play('زرافة.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'س') {
                    if (audioCache.play('سنجاب.mp3') ==
                        audioCache.play('سنجاب.mp3')) {
                      audioCache.play('سنجاب.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ش') {
                    if (audioCache.play('شبل.mp3') ==
                        audioCache.play('شبل.mp3')) {
                      audioCache.play('شبل.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ص') {
                    if (audioCache.play('صقر.mp3') ==
                        audioCache.play('صقر.mp3')) {
                      audioCache.play('صقر.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ض') {
                    if (audioCache.play('ضفدع.mp3') ==
                        audioCache.play('ضفدع.mp3')) {
                      audioCache.play('ضفدع.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ط') {
                    if (audioCache.play('طاووس.mp3') ==
                        audioCache.play('طاووس.mp3')) {
                      audioCache.play('طاووس.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ظ') {
                    if (audioCache.play('ظبي.mp3') ==
                        audioCache.play('ظبي.mp3')) {
                      audioCache.play('ظبي.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ع') {
                    if (audioCache.play('عصفور.mp3') ==
                        audioCache.play('عصفور.mp3')) {
                      audioCache.play('عصفور.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'غ') {
                    if (audioCache.play('غزال.mp3') ==
                        audioCache.play('غزال.mp3')) {
                      audioCache.play('غزال.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ف') {
                    if (audioCache.play('فيل.mp3') ==
                        audioCache.play('فيل.mp3')) {
                      audioCache.play('فيل.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ق') {
                    if (audioCache.play('قطة.mp3') ==
                        audioCache.play('قطة.mp3')) {
                      audioCache.play('قطة.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ك') {
                    if (audioCache.play('كلب.mp3') ==
                        audioCache.play('كلب.mp3')) {
                      audioCache.play('كلب.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }

                  if (word[index] == 'م') {
                    if (audioCache.play('ماعز.mp3') ==
                        audioCache.play('ماعز.mp3')) {
                      audioCache.play('ماعز.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ن') {
                    if (audioCache.play('نمر.mp3') ==
                        audioCache.play('نمر.mp3')) {
                      audioCache.play('نمر.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ه') {
                    if (audioCache.play('هدهد.mp3') ==
                        audioCache.play('هدهد.mp3')) {
                      audioCache.play('هدهد.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'و') {
                    if (audioCache.play('وحيد.mp3') ==
                        audioCache.play('وحيد.mp3')) {
                      audioCache.play('وحيد.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                  if (word[index] == 'ي') {
                    if (audioCache.play('يمامة.mp3') ==
                        audioCache.play('يمامة.mp3')) {
                      audioCache.play('يمامة.mp3');
                    } else {
                      advancePlayer.stop();
                    }
                  }
                },
                items: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 15.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 300.0,
                            width: 300.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Stack(
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Container(
                                          width: 250.0,
                                          height: 300.0,
                                          child:
                                              Image.asset('images/alpa.jpeg'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 15.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/lion.png'),
                          ),
                          Text(
                            "أ",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(4, 1),
                                blurRadius: 12.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/duck.png'),
                          ),
                          Text(
                            "ب",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(4, 1),
                                blurRadius: 12.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/croco.png'),
                          ),
                          Text(
                            "ت",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 12.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/fox.png'),
                          ),
                          Text(
                            "ث",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black26,
                                offset: Offset(2, 1),
                                blurRadius: 12.0)
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/giraffe.png'),
                          ),
                          Text(
                            "ج",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/zebra.png'),
                          ),
                          Text(
                            "ح",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/خروف.png'),
                          ),
                          Text(
                            "خ",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/ديك.png'),
                          ),
                          Text(
                            "د",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/ذئب.png'),
                          ),
                          Text(
                            "ذ",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/رقون.png'),
                          ),
                          Text(
                            "ر",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/زرافة.png'),
                          ),
                          Text(
                            "ز",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/سنجاب.png'),
                          ),
                          Text(
                            "س",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/شبل.png'),
                          ),
                          Text(
                            "ش",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/صقر.png'),
                          ),
                          Text(
                            "ص",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/ضفدع.png'),
                          ),
                          Text(
                            "ض",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/طاووس.png'),
                          ),
                          Text(
                            "ط",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/ظبي.png'),
                          ),
                          Text(
                            "ظ",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/عصفور.png'),
                          ),
                          Text(
                            "ع",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/غزال.png'),
                          ),
                          Text(
                            "غ",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/فيل.png'),
                          ),
                          Text(
                            "ف",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/قطة.png'),
                          ),
                          Text(
                            "ق",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/كلب.png'),
                          ),
                          Text(
                            "ك",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/ماعز.png'),
                          ),
                          Text(
                            "م",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/نمر.png'),
                          ),
                          Text(
                            "ن",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/هدهد.png'),
                          ),
                          Text(
                            "ه",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/وحيد.png'),
                          ),
                          Text(
                            "و",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(2, 1),
                              blurRadius: 12.0,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 200.0,
                            width: 200.0,
                            child: Image.asset('images/alp/يمامة.png'),
                          ),
                          Text(
                            "ي",
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'Comic',
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    advancePlayer.stop();
    super.dispose();
  }
}
