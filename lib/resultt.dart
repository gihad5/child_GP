import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kido/home.dart';
import 'package:kido/rana/bird_quiz.dart';
import 'package:kido/rana/day_quiz.dart';
import 'package:kido/rana/qra_quiz.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  final String subjectName;

  Result(this.resultScore, this.resetHandler, this.subjectName);

//Remark Logic
  String get resultPhrase {
    String resultText;
    if (resultScore >= 50) {
      resultText = 'You are awesome!';
      print(resultScore);
    } else if (resultScore >= 44) {
      resultText = 'Pretty likeable!';
      print(resultScore);
    } else if (resultScore >= 30) {
      resultText = 'You need to work more!';
    } else if (resultScore >= 25) {
      resultText = 'You need to work hard!';
    } else {
      resultText = 'This is a poor score!';
      print(resultScore);
    }
    return resultText;
  }

  Future<void> setSubjectGrade() async {
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;
    final CollectionReference _mainCollection = _firestore.collection('child');
    String email = FirebaseAuth.instance.currentUser.email;

    DocumentReference documentReferencer =
        _mainCollection.doc(email).collection("grades").doc();

    Map<String, dynamic> data = <String, dynamic>{
      "subject": subjectName,
      "grade": resultScore,
    };

    await documentReferencer
        .set(data)
        .whenComplete(() => print("Subject grade added to the database"))
        .catchError((e) => print(e));
  }

  @override
  Widget build(BuildContext context) {
    setSubjectGrade();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Your Score : ' '$resultScore ',
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 36,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ), //Text
          Text(
            resultPhrase,
            style: TextStyle(
                color: Colors.grey[800],
                fontSize: 26,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          /*	FlatButton(
			child: Text(
			'Restart Quiz!',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, ),
			), //Text
			textColor: Colors.blue,
			onPressed: resetHandler,
		), //FlatButton
		], //<Widget>[]*/
          TextButton(
            child: Text('End',
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w600,
                )),
            style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(13)),
                //margin:MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(20)),
                foregroundColor:
                    MaterialStateProperty.all<Color>(Colors.teal[400]),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24.0),
                  //side: BorderSide(color: Colors.red[50])
                ))),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Home()));
            },
          ),
        ],
      ), //Column
    ); //Center
  }
}
