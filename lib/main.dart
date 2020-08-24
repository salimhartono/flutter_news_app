import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  //koment untuk git
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MakNews',
      theme: ThemeData(
        primaryColor: Color(0xff121212),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Container(),
    );
  }
}
