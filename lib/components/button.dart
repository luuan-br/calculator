import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const DARK = Color.fromRGBO(80, 90, 160, 1);
  static const DEFAULT = Color.fromRGBO(80, 140, 250, 1);
  static const OPERATION = Color.fromRGBO(240, 200, 50, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  Button(
      {@required this.text,
      this.big = false,
      this.color = DEFAULT,
      @required this.cb});

  Button.big(
      {@required this.text,
      this.big = true,
      this.color = DEFAULT,
      @required this.cb});

  Button.operation(
      {@required this.text,
      this.big = false,
      this.color = OPERATION,
      @required this.cb});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        color: this.color,
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
        onPressed: () => cb(text),
      ),
    );
  }
}
