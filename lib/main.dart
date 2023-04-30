import 'package:flaterent/display/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          backgroundColor: Color(0xfff5f6f6),
          primaryColor: Color(0xfffa811883),
          accentColor: Color.fromARGB(255, 57, 53, 53),
          textTheme: TextTheme(
            headline2: TextStyle(color: Colors.amber),
          )),
      home: Homes(),
    );
  }
}
