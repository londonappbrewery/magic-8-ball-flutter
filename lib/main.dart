import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BallApp(),
  ));
}

class BallApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Ask Me Anything"),
      ),
      body: Ball(),
    );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: GestureDetector(
            onTap: () {
              setState(() {
                ballNumber = Random().nextInt(4) + 1;
              });
              print("I got clicked");
              print("Ball number is $ballNumber");
            },
            child: Image.asset("images/ball$ballNumber.png")),
      ),
    );
  }
}
