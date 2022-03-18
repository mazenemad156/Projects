// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  String text;
  Color color;
  double size;
  TextAlign textAlign;
  FontWeight fontWeight;
  TextTitle(
      {Key key,
      this.text,
      this.fontWeight,
      this.size,
      this.color,
      this.textAlign})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(fontSize: size, color: color, fontWeight: fontWeight),
      ),
    );
  }
}
