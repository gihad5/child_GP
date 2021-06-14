import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  String img;

  Question(this.questionText, this.img);

  @override
  Widget build(BuildContext context) {
    return Container(
      /*  decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/BackgroundQuiz/Back1.jpg"),
              fit: BoxFit.cover)),*/

      //height: context.height,
      width: double.infinity,
      margin: EdgeInsets.all(0),

      child: Column(children: [
        SizedBox(
          height: 150,
          width: 200,
          child: Image.asset(img),
        ),
        SizedBox(
          height: 20,
        ),
        SizedBox(
            child: Text(
          questionText,
          style: TextStyle(
              color: Colors.grey[800],
              fontSize: 25,
              fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        )),
        SizedBox(
          height: 10,
        ),
      ]),
      //Text
    ); //Contaier
  }
}
