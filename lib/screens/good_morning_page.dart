import 'package:flutter/material.dart';

class GoodMorningPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      padding:
          EdgeInsets.only(top: 160.0, left: 30.0, right: 30.0, bottom: 30.0),
      child: Column(
        children: <Widget>[
          Text(
            "Good morning",
            style: TextStyle(fontSize: 36.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text(
            "It's time to set your goals for today.",
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    ));
  }
}
