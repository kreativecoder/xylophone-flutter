import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({int soundNumber, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            buildKey(soundNumber: 1, color: Colors.teal),
            buildKey(soundNumber: 2, color: Colors.blue),
            buildKey(soundNumber: 3, color: Colors.green),
            buildKey(soundNumber: 4, color: Colors.yellow),
            buildKey(soundNumber: 5, color: Colors.black),
            buildKey(soundNumber: 6, color: Colors.brown),
            buildKey(soundNumber: 7, color: Colors.pink),
          ],
        )),
      ),
    );
  }
}
