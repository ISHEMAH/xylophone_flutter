import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int soundNumber) {
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  Expanded buildKey({required Color color,required int number}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(backgroundColor: color),
        child: Text(''),
        onPressed: () {
          playSound(number);
        },
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
            buildKey(color: Colors.red,number: 1),
            buildKey(color: Colors.green,number: 2),
            buildKey(color: Colors.blue,number: 3),
            buildKey(color: Colors.yellow,number: 4),
            buildKey(color: Colors.orange,number: 5),
            buildKey(color: Colors.indigo,number: 6),
            buildKey(color: Colors.pink,number: 7),
          ],
        ),
      ),
    ));
  }
}
