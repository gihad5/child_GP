import 'package:flutter/material.dart';

class Alp extends StatefulWidget {
  @override
  _AlpState createState() => _AlpState();
}

class _AlpState extends State<Alp> {
  List<Color> colors = [Colors.red, Colors.green, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          /*    body: Container(
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              child: Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(left: 5, right: 5),
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.child_care_outlined,
                          color: colors[(index + 1) % 3],
                          size: 40,
                        ),
                      ),
                      Container(
                        width: 2,
                        height: 50,
                        color: Colors.purple,
                      ),
                      Container(
                        width: 2,
                        height: 30,
                        color: Colors.deepPurple,
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              top: BorderSide(width: 4, color: Colors.pink)),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 10,
                              color: Colors.black26,
                            )
                          ]),
                      height: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "title",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "description",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      )*/
          ),
    );
  }
}
