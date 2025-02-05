import 'package:flutter/material.dart';

class TextField2 extends StatelessWidget {
  const TextField2({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 360,
      child: TextField(
        decoration: InputDecoration(
          labelText: text,
          labelStyle: TextStyle(
            color: Colors.grey,
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16),
              borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
