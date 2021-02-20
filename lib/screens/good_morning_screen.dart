import 'package:flutter/material.dart';

class GoodMorningScreen extends StatelessWidget {
  const GoodMorningScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding: const EdgeInsets.only(top: 160, left: 30, right: 30, bottom: 30),
      child: Column(
        children: const <Widget>[
          Text(
            'Good morning',
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text(
            "It's time to set your goals for today.",
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    ));
  }
}
