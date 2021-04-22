import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      items: <BottomNavigationBarItem>[
        const BottomNavigationBarItem(
          icon: Icon(Icons.today),
          label: 'Today',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/images/mindfulness.svg',
              semanticsLabel: 'Mindfulness',
              height: 25,
              color: currentIndex == 1
                  ? const Color(0xFF4B81EF)
                  : const Color(0xFF737373)),
          label: 'Mindfulness',
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.more_horiz),
          label: 'More',
        ),
      ],
      currentIndex: currentIndex,
      selectedItemColor: const Color(0xFF4B81EF),
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
