import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.deepPurple,
          appBar: AppBar(
            title: Text('8 balls'),
            backgroundColor: Colors.deepPurpleAccent,
          ),
          body: Balls(),
        ),
      ),
    );

class Balls extends StatefulWidget {
  @override
  _BallsState createState() => _BallsState();
}

class _BallsState extends State<Balls> {
  int choice = 1;
  void update() {
    setState(() {
      choice = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: FlatButton(
            onPressed: () {
              update();
            },
            child: Image.asset('images/ball$choice.png')),
      ),
    );
  }
}
