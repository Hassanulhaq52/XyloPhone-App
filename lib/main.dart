import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource("note$soundNumber.wav"));
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: SafeArea(
          child: Column(children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: ()  {
        playSound(1);
              },
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.orange.shade700),
              ),
              onPressed: ()  {
                playSound(2);
              },
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.yellow.shade600),
              ),
              onPressed: ()  {
                playSound(3);
              },
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.green.shade700),
              ),
              onPressed: ()  {
                playSound(4);
              },
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.teal.shade800),
              ),
              onPressed: ()  {
                playSound(5);
              },
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.blue.shade700),
              ),
              onPressed: ()  {
                playSound(6);
              },
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.purple.shade700),
              ),
              onPressed: ()  {
                playSound(7);
              },
            ),
          ]),
        ),
      ),
    );
  }
}
