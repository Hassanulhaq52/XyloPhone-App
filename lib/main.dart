
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: SafeArea(
          child: Container(
            child: Center(
              child: TextButton(
                onPressed: () async {
                  final player = AudioPlayer();
                  await player.play(AssetSource("note1.wav"));
                },
                child: Text(
                    'Click Me',
                  style: TextStyle(
                    fontSize: 50.0,
                    color: Colors.red
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
