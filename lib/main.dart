import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp()); //Arrow Functions

class XylophoneApp extends StatelessWidget {
  void playNote(int note) {
    AudioPlayer().play(
      AssetSource('audios/note$note.wav'),
    );
  }

  Expanded buildButton({required Color color, required int note}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
          enableFeedback: false,
        ),
        onPressed: () {
          playNote(note);
        },
        child: Text(''),
      ),
    ); //A Function always want ';' at the end of the statement/code iy contains. Remember this as Flutter/Dart will give the error if missed.
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
              buildButton(color: Colors.red, note: 1),
              buildButton(color: Colors.orange, note: 2),
              buildButton(color: Colors.yellow, note: 3),
              buildButton(color: Colors.green, note: 4),
              buildButton(color: Colors.blue, note: 5),
              buildButton(color: Colors.indigo, note: 6),
              buildButton(color: Colors.purple, note: 7),
            ],
          ),
        ),
      ),
    );
  }
}
