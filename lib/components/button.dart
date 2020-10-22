import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function(String) cb;

  const Button({@required this.text, this.cb});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RaisedButton(
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Text(
            text,
            style: TextStyle(
              decoration: TextDecoration.none,
              fontSize: 100,
              fontWeight: FontWeight.w100,
            ),
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
