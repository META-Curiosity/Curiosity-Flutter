import 'package:flutter/material.dart';
import '../audioplayer.dart';

class MindfulSessionsScreen extends StatelessWidget {
  const MindfulSessionsScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Mindful Session Player',
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.orangeAccent, // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {
              // Navigate to the second screen using a named route.
              Navigator.pushNamed(context, '/audio_player');
            },
            child: const Text('Eating'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green, // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {
              // Navigate to the second screen using a named route.
              Navigator.pushNamed(context, '/audio_player');
            },
            child: const Text('Walking'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.lightBlue, // background
              onPrimary: Colors.white, // foreground
            ),
            onPressed: () {
              // Navigate to the second screen using a named route.
              Navigator.pushNamed(context, '/audio_player',
                arguments: <String, String>{
                'city': 'Berlin',
                'country': 'Germany',
                },
              );
            },
            child: const Text('Washing'),
          ),
        ],
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
      body:
          const AudioApp(name: 'Mindful Session'),
    );
  }
}
