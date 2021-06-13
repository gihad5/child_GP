import 'dart:core';


import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import 'package:kido/service/auth.dart';

// ignore: must_be_immutable
class LogInScreen extends StatelessWidget {
  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
   String email ; 
  String password ;
  static String id = 'SignUpScreen';
  
 
  final _auth = Auth();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: globalKey,
          child: ListView(children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 110),
              child: Image(
                image: AssetImage('images/3.png'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: height * .04,
            ),
            TextFormField(
              
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'What do people call you?',
                labelText: 'Email',
              ),
              onSaved: (value) { email = value;},
            ),
             SizedBox(
              height: height * .02,
            ),
            TextFormField(
                decoration: const InputDecoration(
              icon: Icon(Icons.lock),
              hintText: 'secrt password',
              labelText: 'Password',
            ),
             onSaved: (value) { password = value;},),
             SizedBox(
              height: height * .09,
            ),
             Container(
              
                alignment: Alignment.topCenter,
               child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Builder(
                      builder: (context) => FlatButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          onPressed: () async {
                            if (globalKey.currentState.validate()) {
                              globalKey.currentState.save();
                              try {
                                final authresult =
                                    await _auth.signIn(email, password);
                              } catch (e) {
                                Scaffold.of(context).showSnackBar(SnackBar(
                                  content: Text(e.toString()),
                                ));
                              }
                            }
                          },
                          color: Colors.teal[300],
                          child: Text(
                            'Start',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ),
                ),
             
          ]),
        ));
  }
}
