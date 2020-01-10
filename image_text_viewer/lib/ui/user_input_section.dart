import 'package:flutter/material.dart';

class UserInputSection extends StatefulWidget {
  @override
  _UserInputSectionState createState() => _UserInputSectionState();
}

class _UserInputSectionState extends State<UserInputSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white38,
      width: 100.0,
      child: Center(
        child: ListView(
          children: <Widget>[
            Text('data'),
            Text('as')
          ],
        ),
      )
    );
  }
}