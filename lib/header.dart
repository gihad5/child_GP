import 'package:flutter/material.dart';

AppBar header(context, {bool isAppTitle = false, String titletext}) {
  return AppBar(
    title: Text(
      isAppTitle ? "KidO" : titletext,
      style: TextStyle(color: Colors.tealAccent, fontSize: 30.0),
    ),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    leading: Icon(Icons.home_rounded),
    actions: [Icon(Icons.all_inbox)],
  );
}
