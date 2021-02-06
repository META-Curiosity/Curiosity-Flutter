import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../notifiers/navigation_notifier.dart';
import '../screens/good_morning_page.dart';

final provider = StateNotifierProvider((ref) => NavigationNotifier());

class NavigationBarScreen extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final pageModel = useProvider(provider);
    final currentPage = useProvider(provider.state).page;

    int currentIndex;
    Widget body;
    switch (currentPage) {
      case NavigationBarEvent.TODAY:
        body = GoodMorningPage();
        currentIndex = 0;
        break;
      case NavigationBarEvent.MINDFUL:
        body = Text("Mindful sessions");
        currentIndex = 1;
        break;
      case NavigationBarEvent.MORE:
        body = Text("More info");
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
