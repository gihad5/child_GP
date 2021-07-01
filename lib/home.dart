import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kido/Screens/login.dart';
import 'package:kido/final.dart';
import 'package:kido/gihad/list_organs.dart';
import 'package:kido/gihad/list_vechiles.dart';
import 'package:kido/rana/list_birds.dart';
import 'package:kido/rana/list_day.dart';
import 'package:kido/rana/list_qra.dart';
import 'package:kido/sara/list_monthes.dart';
import 'package:kido/sara/list_shapes.dart';
import 'package:kido/sara/list_vf.dart';
import 'package:kido/service/auth.dart';
import 'package:kido/wessam/list_alp.dart';
import 'package:kido/wessam/list_clo.dart';
import 'package:kido/wessam/list_co.dart';
import 'package:kido/wessam/list_eng.dart';
import 'package:kido/yasmin/list_animal.dart';
import 'package:kido/yasmin/list_numbers.dart';
import 'package:kido/yasmin/list_seasons.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  get child => null;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  String localFilePath;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // appBar: header(context, titletext: "Kedo"),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/ve.gif'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 10.0,
                              ),
                            ]),
                        child: IconButton(
                            icon: const Icon(Icons.lock_open),
                            tooltip: 'logout',
                            color: Colors.teal[300],
                            onPressed: () async {
                              await FirebaseAuth.instance.signOut();
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LogInScreen()));
                            }),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.transparent),
                        child: Image.asset('images/bb.png'),
                        height: 80,
                        width: 180,
                        // style: TextStyle(color: Colors.yellow, fontSize: 25),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.transparent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                blurRadius: 10.0,
                              ),
                            ]),
                        child: IconButton(
                            icon: const Icon(Icons.account_box_rounded),
                            tooltip: 'profile',
                            color: Colors.teal[300],
                            onPressed: () async {}),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: new Expanded(
                    child: GridView(
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListAlp()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/alp.png'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "Alphabet",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.red,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(1, 1),
                                      blurRadius: 50.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListEng()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/abc.png'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "English",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.yellow,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.yellow,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(2, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListNumbers()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/number.jpg'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "Numbers",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius:
                                            BorderRadius.circular(70.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.greenAccent,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(2, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListCo()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/colors.jpg'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "Colors",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.blue,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(2, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListAnimals()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/animals.jpg'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "Animals",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(2, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListDay()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/days.jpg'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "Days",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.purple,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(2, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListOrgans()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/parts.jpg'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "Body Parts",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.pink,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.pink,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(2, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListSeasons()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/monthes.PNG'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "Seasons",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.deepPurple,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.deepPurple,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(2, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListVechiles()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/vecl.png'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "Vehicles",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.orange,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.orange,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(2, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Listbirds()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/birds.jpg'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "Birds",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.blueGrey,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(2, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListClo()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/clothes.jpg'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "Clothes",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.cyan,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.cyan,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(2, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListMonthes()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/shr.jpg'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "Months",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.lime,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.lime,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(2, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListVf()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/veg.jpg'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "Fruits&Vegetables",
                                        style: TextStyle(
                                            fontSize: 12.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.red,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(2, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListShapes()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/shape.jpg'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "Shapes",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.indigoAccent,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.indigoAccent,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(2, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ListQra()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/qr.jpg'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "القرآن الكريم",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.teal,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.teal,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(2, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FinalExam()));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(10.0),
                            child: Container(
                              width: 150.0,
                              height: 150.0,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 110.0,
                                    width: 150.0,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: Image.asset('images/final.jpg'),
                                    ),
                                  ),
                                  Container(
                                    height: 35.0,
                                    width: 130.0,
                                    child: Center(
                                      child: Text(
                                        "Final Exam",
                                        style: TextStyle(
                                            fontSize: 16.0,
                                            fontFamily: 'Comic',
                                            fontWeight: FontWeight.w800,
                                            color: Colors.white),
                                      ),
                                    ),
                                    decoration: BoxDecoration(
                                        color: Colors.cyanAccent,
                                        borderRadius:
                                            BorderRadius.circular(50.0),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.cyanAccent,
                                            blurRadius: 10.0,
                                          ),
                                        ]),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(50.0),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.transparent,
                                      offset: Offset(2, 1),
                                      blurRadius: 20.0,
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*  Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CoVideo(
                                        videopath: 'assets/covideo.mp4',
                                        headerText: "Colors")));*/
