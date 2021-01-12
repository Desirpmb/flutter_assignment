import 'package:flutter/material.dart';

class TextName extends StatelessWidget {
  final List<String> _name;
  final int _nameIndex;

  TextName(this._name, this._nameIndex);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(_name[_nameIndex],
          style: TextStyle(fontSize: 50), textAlign: TextAlign.center),
    );
  }
}
