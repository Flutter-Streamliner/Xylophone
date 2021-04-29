import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Xylophone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('Xylophone'),),
        body: SafeArea(
          child: TextButton(
            child: Text('Click me'),
            onPressed: (){
              
              final player = AudioCache();
              AudioPlayer.logEnabled = true;
              player.play('note1.wav');
            },
          ),
        ),
      ),
    );
  }
}
