import 'package:flutter/material.dart';

class ElevatedText extends StatelessWidget {
  const ElevatedText({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 16,
          color: Colors.white),
    );
  }
}
