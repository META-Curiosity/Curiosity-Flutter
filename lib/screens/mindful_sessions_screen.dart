import 'package:flutter/material.dart';

class MindfulSessionsScreen extends StatelessWidget {
  const MindfulSessionsScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.orange, // background
          onPrimary: Colors.white, // foreground
        ),
        onPressed: () {
          // Navigate to the second screen using a named route.
          Navigator.pushNamed(context, '/audio_player');
        },
        child: const Text('MindFul Eating'),
      ),
    );
  }
}

class AudioPlayer extends StatelessWidget {
  const AudioPlayer({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio Player'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
    );
  }
}
