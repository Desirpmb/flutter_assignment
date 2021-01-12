// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/material.dart';
import './textControl.dart';
import './textName.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> _name = const ['Desir', 'Binyamine', 'Yacine', 'Raït'];
  int nameIndex = 0;

  void nextName() {
    setState(() {
      nameIndex += 1;
    });
    print(_name[nameIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Assignment'),
        ),
        body: nameIndex < _name.length
            ? Column(children: [
                TextName(_name,nameIndex),
                TextControl(nextName)
              ])
            : Center(
                child: Text('Sucess'),
              ),
      ),
    );
  }
}
