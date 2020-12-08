import 'package:flutter/material.dart';
import 'dart:math';



void main() => runApp(
      MaterialApp(
        home: BallPage(

        ),
      ),
    );
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('ASK AWAY'),

      ),
      backgroundColor: Colors.teal,
      body: Ball(

      ),

    );
  }
}
class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();

}

class _BallState extends State<Ball> {
  @override
  int Ballno = 1;
  Widget build(BuildContext context) {
    return Center(
      child:
          FlatButton(
            onPressed: (){
              print("the image shas been pressed");
              setState(() {
                Ballno = Random().nextInt(5)+1;
              });
              print('ball no is  $Ballno');
            },
              child: Image.asset('images/ball$Ballno.png'),
          ),



    );
  }
}
