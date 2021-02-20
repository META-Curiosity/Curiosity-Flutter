import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../notifiers/navigation_notifier.dart';
import 'good_morning_screen.dart';
import 'mindful_sessions_screen.dart';

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
      case NavigationBarEvent.TODAY:
        body = const GoodMorningScreen();
        currentIndex = 0;
        break;
      case NavigationBarEvent.MINDFUL:
        body = const MindfulSessionsScreen();
        currentIndex = 1;
        break;
      case NavigationBarEvent.MORE:
        body = const Text('More info');
        currentIndex = 2;
        break;
    }

    return Scaffold(
      body: body,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Today',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Mindfulness',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'More',
          ),
        ],
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue[800],
        onTap: pageModel.selectPage,
      ),
    );
  }
}
