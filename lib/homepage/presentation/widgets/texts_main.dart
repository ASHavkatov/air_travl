import 'package:flutter/material.dart';
import 'package:treval_app/core/utils/colors.dart';

class TextsMain extends StatelessWidget {
  const TextsMain({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: AppColor.textmain,
        fontFamily: 'Urbanist',
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}
