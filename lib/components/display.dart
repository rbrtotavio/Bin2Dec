import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String _text;

  Display(this._text);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Container(
          color: Color.fromRGBO(48, 48, 48, 1),
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
