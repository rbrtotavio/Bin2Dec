import 'package:beto_bin2dec/components/display.dart';
import 'package:beto_bin2dec/components/keyboard.dart';
import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  _onPressed(String command) {
    setState(() {
      print(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Display('0'),
          Display.light('0'),
          Keyboard(_onPressed),
        ],
      ),
    );
  }
}
