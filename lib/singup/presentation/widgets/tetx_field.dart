import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class TextFiled extends StatelessWidget {
  const TextFiled({super.key});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 360,
      child: TextField(
        decoration: InputDecoration(
          labelText: "Telefon raqamingizni kirting",
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
          prefixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              'assets/icons/call_phone.svg',
              width: 20,
              height: 20,
            ),
          ),
        ),
      ),
    );
  }
}