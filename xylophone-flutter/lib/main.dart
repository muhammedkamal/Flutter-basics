import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();

    // call this method when desired
    player.play('note$soundNum.wav');
  }
  Widget buildKey(Color color,int num,int f)
  {
    return Expanded(
      flex:f,
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(Colors.white,1,1),
              buildKey(Colors.black,2,1),
              buildKey(Colors.white,3,1),
              buildKey(Colors.black,4,1),
              buildKey(Colors.white,5,1),
              buildKey(Colors.black,6,1),
              buildKey(Colors.white,7,1),
            ],
          ),
        ),
      ),
    );
  }
}
