import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey[900],
            title: Center(
              child: Text('Magic Ball'),
            ),
          ),
          body: Magic(),
          backgroundColor: Colors.grey[400],
        ),
      ),
    );

class Magic extends StatefulWidget {
  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int ball=1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: FlatButton(
          onPressed: (){
            setState(() {
              ball = Random().nextInt(5)+1;
            });
            print('button had pressed $ball');
          },
          child: Image.asset('images/ball$ball.png'),
        ),
      ),
    );
  }
}
