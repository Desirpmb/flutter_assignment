import 'package:flutter/material.dart';
import './textOutput.dart';

class TextControl extends StatefulWidget {
  @override
  TextControlState createState() => TextControlState();
}

class TextControlState extends State<TextControl> {
  String text = 'This is original text';
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        child: TextOutput(text),
      ),
      Container(
        child: RaisedButton(
            textColor: Colors.white,
            color: Colors.blue,
            child: Text('Change text'),
            onPressed: () {
              setState(() {
                text = 'text changed!';
              });
            }),
      ),
    ]);
  }
}
