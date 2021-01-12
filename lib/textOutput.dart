import 'package:flutter/material.dart';

class TextOutput extends StatelessWidget {
  final String newText;
  TextOutput(this.newText);

  @override
  Widget build(BuildContext context) {
    return Text(newText,
        style: TextStyle(fontSize: 50), textAlign: TextAlign.center);
  }
}
