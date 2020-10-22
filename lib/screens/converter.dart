import 'package:beto_bin2dec/components/display.dart';
import 'package:beto_bin2dec/components/keyboard.dart';
import 'package:flutter/material.dart';

class Converter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Display('Display'),
          Keyboard(),
        ],
      ),
    );
  }
}
