import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:kido/finalexam2.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FinalExam extends StatefulWidget {
  @override
  _FinalExamState createState() => _FinalExamState();
}

class _FinalExamState extends State<FinalExam> {
  String myName = '';
  String fatherName = '';
  String motherName = '';
  String myAge = '';
  int totalScore = 0;

  void getStudentInfo() {
    final FirebaseFirestore _firestore = FirebaseFirestore.instance;
    final CollectionReference _mainCollection = _firestore.collection('child');
    String email = FirebaseAuth.instance.currentUser.email;

    DocumentReference documentReferencer = _mainCollection.doc(email);
    documentReferencer
      ..get().then((value) {
        myAge = value.data()["age"].toString();
        motherName = value.data()["mother"].toString();
        myName = value.data()["name"].toString();
        fatherName = value.data()["father"].toString();
        print('fffff' + fatherName);
      });
  }

  @override
  Widget build(BuildContext context) {
    totalScore = 0;
    final nameController = TextEditingController();
    final ageController = TextEditingController();
    final fatherController = TextEditingController();
    final motherController = TextEditingController();

    void calculateTotalScore() {
      if (nameController.text.toString().toLowerCase() ==
          myName.toLowerCase()) {
        totalScore += 2;
      }
      if (ageController.text.toString().toLowerCase() == myAge.toLowerCase()) {
        totalScore += 2;
      }
      if (fatherController.text.toString().toLowerCase() ==
          fatherName.toLowerCase()) {
        totalScore += 2;
      }
      if (motherController.text.toString().toLowerCase() ==
          motherName.toLowerCase()) {
        totalScore += 2;
      }
    }

    getStudentInfo();
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
                controller: nameController,
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
                controller: ageController,
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
                controller: fatherController,
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
                controller: motherController,
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
                        calculateTotalScore();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Final(totalScore)));
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
