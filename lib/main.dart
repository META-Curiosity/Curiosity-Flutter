import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:firebase_performance/firebase_performance.dart'; // actually used as a side-effect; don't delete!
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'controllers/navigation_controller.dart';
import 'screens/play_audio_screen.dart';

FirebaseAnalytics analytics;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  analytics = FirebaseAnalytics();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
  runApp(
    // For widgets to be able to read providers, we need to wrap the entire
    // application in a "ProviderScope" widget.
    // This is where the state of our providers will be stored.
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'META Curiosity',
      initialRoute: '/',
      navigatorObservers: [FirebaseAnalyticsObserver(analytics: analytics)],
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const NavigationBarScreen(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/play_audio': (context) => const AudioPlayer(),
      },
    );
  }
}
