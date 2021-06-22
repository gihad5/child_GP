import 'package:flutter/material.dart';
import 'package:kido/finalexam2.dart';

class FinalExam extends StatefulWidget {
  @override
  _FinalExamState createState() => _FinalExamState();
}

class _FinalExamState extends State<FinalExam> {
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
        backgroundColor: Colors.teal[300],
        centerTitle: true,
        title: Text(" Final Exam "),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Q1. What is your name?",
                  hintText: "",
                  labelStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.pink[600],
                      fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  fillColor: Colors.pink[50],
                  filled: true,
                ),
                maxLines: 2,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Q2. How old are you?",
                  hintText: "",
                  labelStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.green[700],
                      fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  fillColor: Colors.green[50],
                  filled: true,
                ),
                obscureText: false,
                maxLines: 2,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Q3. what is father's name?",
                  hintText: "",
                  labelStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.blue[700],
                      fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  fillColor: Colors.blue[100],
                  filled: true,
                ),
                obscureText: false,
                maxLines: 2,
              ),
              SizedBox(
                height: 16,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Q4. what is mother's name",
                  hintText: "",
                  labelStyle: TextStyle(
                      fontSize: 18,
                      color: Colors.yellow[800],
                      fontWeight: FontWeight.bold),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  fillColor: Colors.yellow[100],
                  filled: true,
                ),
                obscureText: false,
                maxLines: 2,
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                  width: 200,
                  child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Final()));
                      },
                      color: Colors.teal[300],
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
