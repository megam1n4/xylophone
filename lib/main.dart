import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$noteNumber.wav'),
    );
  }

  Expanded buildKey({required Color color, required int noteNumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(noteNumber);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black38,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 2),
            buildKey(color: Colors.red, noteNumber: 1),
            SizedBox(height: 2),
            buildKey(color: Colors.orange, noteNumber: 2),
            SizedBox(height: 2),
            buildKey(color: Colors.green, noteNumber: 3),
            SizedBox(height: 2),
            buildKey(color: Colors.yellow, noteNumber: 4),
            SizedBox(height: 2),
            buildKey(color: Colors.blue, noteNumber: 5),
            SizedBox(height: 2),
            buildKey(color: Colors.teal, noteNumber: 6),
            SizedBox(height: 2),
            buildKey(color: Colors.purple, noteNumber: 7),
            SizedBox(height: 2)
          ],
        )),
      ),
    );
  }
}
