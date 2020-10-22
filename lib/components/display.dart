import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  static const DEFAULT = Color.fromRGBO(48, 48, 48, 1);
  static const LIGHTER = Color.fromRGBO(56, 56, 56, 1);

  final String _text;
  final Color colorDisplay;

  Display(
    this._text, {
    this.colorDisplay = DEFAULT,
  });

  Display.light(
    this._text, {
    this.colorDisplay = LIGHTER,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          color: colorDisplay,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _text,
                  maxLines: 1,
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
