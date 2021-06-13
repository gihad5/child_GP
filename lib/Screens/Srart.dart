import 'package:flutter/material.dart';

import 'package:kido/Screens/login.dart';

class Start extends StatelessWidget {
  static String id = 'Start';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Image(
              image: AssetImage('images/2.jpeg'),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                alignment: Alignment.topCenter,
                child: FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {Navigator.pushNamed(context, LogInScreen.id);},
                    color: Colors.teal[300],
                    child: Text(
                      "Start",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Icon(Icons.arrow_forward_ios_sharp,color: Colors.teal[300],size: 50 ,),
            )
          ],
        ));
  }
}
