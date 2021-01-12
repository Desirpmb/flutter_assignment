import 'package:flutter/material.dart';


class TextControl extends StatelessWidget {
  final Function nameHandler;

  TextControl(this.nameHandler);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: RaisedButton(
          textColor: Colors.white,
          color: Colors.blue,
          child: Text('Bouton'),
          onPressed: nameHandler),
    );
  }
}
