import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key key,
    this.currentIndex,
    this.onTap,
  }) : super(key: key);

  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
      onTap: onTap,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('currentIndex', currentIndex));
    properties.add(ObjectFlagProperty<Function(int p1)>.has('onTap', onTap));
  }
}
