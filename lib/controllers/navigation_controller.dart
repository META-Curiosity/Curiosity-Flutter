import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../models/navigation_notifier.dart';
import '../screens/good_morning_screen.dart';
import '../screens/mindful_sessions_screen.dart';
import '../widgets/bottom_nav.dart';

final provider = StateNotifierProvider((ref) => NavigationNotifier());

class NavigationBarScreen extends HookWidget {
  const NavigationBarScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final pageModel = useProvider(provider);
    final currentPage = useProvider(provider.state).page;

    int currentIndex;
    Widget body;
    switch (currentPage) {
      case NavigationBarEvent.today:
        body = const GoodMorningScreen();
        currentIndex = 0;
        break;
      case NavigationBarEvent.mindful:
        body = const MindfulSessionsScreen();
        currentIndex = 1;
        break;
      case NavigationBarEvent.more:
        body = const Text('More info');
        currentIndex = 2;
        break;
    }

    return Scaffold(
      body: body,
      bottomNavigationBar:
          BottomNav(currentIndex: currentIndex, onTap: pageModel.selectPage),
    );
  }
}
