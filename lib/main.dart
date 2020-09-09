import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  void playSound(int soundnum) {
    final player = AudioCache();
    player.play('note$soundnum.wav');
  }

  Expanded buildk({
    Color color,
    int snum,
  }) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(snum);
        },
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildk(color: Colors.red, snum: 1),
              buildk(color: Colors.orange, snum: 2),
              buildk(color: Colors.yellow, snum: 3),
              buildk(color: Colors.green, snum: 4),
              buildk(color: Colors.teal, snum: 5),
              buildk(color: Colors.blue, snum: 6),
              buildk(color: Colors.purple, snum: 7),
            ],
          ),
        ),
      ),
    );
  }
}
