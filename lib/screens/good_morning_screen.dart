import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class GoodMorningScreen extends StatelessWidget {
  const GoodMorningScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: const EdgeInsets.only(top: 160, left: 30, right: 30, bottom: 30),
      child: Column(
        children: <Widget>[
          const Text(
            'Good morning',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          const Text(
            "It's time to set your goals for today.",
            style: TextStyle(fontSize: 16),
          ),
          SvgPicture.asset('assets/images/target.svg', semanticsLabel: 'Target')
        ],
      ),
    ));
  }
}
