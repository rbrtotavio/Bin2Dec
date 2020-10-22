import 'package:flutter/material.dart';

import 'package:beto_bin2dec/components/button_row.dart';

import 'button.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;

  Keyboard(this.cb);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Button(text: '1', cb: cb),
          SizedBox(height: 1),
          Button(text: '0', cb: cb),
          SizedBox(height: 1),
          ButtonRow([
            Button(text: '=', cb: cb),
            Button(text: 'C', cb: cb),
          ])
        ],
      ),
    );
  }
}
