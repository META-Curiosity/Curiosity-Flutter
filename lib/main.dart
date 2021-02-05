import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Named Routes Demo',
    // Start the app with the "/" named route. In this case, the app starts
    // on the FirstScreen widget.
    initialRoute: '/',
    routes: {
      // When navigating to the "/" route, build the FirstScreen widget.
      '/': (context) => TabBarDemo(),
      // When navigating to the "/second" route, build the SecondScreen widget.
      '/audio_player': (context) => AudioPlayer(),
    },
  ));
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.verified)),
                Tab(icon: Icon(Icons.label)),
                Tab(icon: Icon(Icons.more_horiz)),
              ],
            ),
            title: Text('Mindful Sessions'),
          ),
          body: TabBarView(
            children: [

              // Icon(Icons.directions_car),
              Icon(Icons.verified),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  child: Text('MindFul Eating'),
                  onPressed: () {
                    // Navigate to the second screen using a named route.
                    Navigator.pushNamed(context, '/audio_player');
                  },
                ),
              ),
              Icon(Icons.more_horiz),
            ],
          ),
        ),
      ),
    );
  }
}

class AudioPlayer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Audio Player"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}