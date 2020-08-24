import 'package:flutter/material.dart';

Widget myAppBar() {
  return AppBar(
    title: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Mak",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        Text("News",
            style: TextStyle(
                color: Colors.purpleAccent, fontWeight: FontWeight.bold))
      ],
    ),
    backgroundColor: Colors.transparent,
    elevation: 0.0,
  );
}
