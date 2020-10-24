import 'package:beto_bin2dec/components/display.dart';
import 'package:beto_bin2dec/components/keyboard.dart';
import 'package:beto_bin2dec/models/memory.dart';
import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  final Memory memory = Memory();

  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Display(memory.valueBin),
          Display.light(memory.valueDec),
          Keyboard(_onPressed),
        ],
      ),
    );
  }
}
