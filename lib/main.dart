import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp(
  ));
}

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }

  Expanded buildKey(c, soundNumber){
    return Expanded(
      child: TextButton(
        onPressed: () {
          playSound(soundNumber);
        },
        child: Container(
          width: double.infinity,
          height: 100.0,
          color: c,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
              children: [
                buildKey(Colors.red, 1),
                buildKey(Colors.blue, 2),
                buildKey(Colors.yellow, 3),
                buildKey(Colors.green, 4),
                buildKey(Colors.purple, 5),
                buildKey(Colors.teal, 6),
                buildKey(Colors.orange, 7)
              ]
          )
        ),
      )
    );
  }
}
