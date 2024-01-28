import 'package:flutter/material.dart';
class TextButoon extends StatelessWidget {
  const TextButoon({super.key, this.onPressed, this.decoration, required this.txt, required this.color});
  final Function()? onPressed;
  final TextDecoration? decoration;
  final String txt;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: onPressed, child: Text(txt,style: TextStyle( decoration: decoration,color: color),  ),);
  }
}
