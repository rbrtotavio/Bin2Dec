import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String _text;

  const Button(this._text);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(_text),
      onPressed: () {},
    );
  }
}
