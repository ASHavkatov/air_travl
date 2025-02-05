import 'package:flutter/material.dart';
import 'package:treval_app/core/utils/colors.dart';

class Royaxtdanutish extends StatelessWidget {
  const Royaxtdanutish({super.key});


  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
      onPressed: () {
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.shoshilingcontainer1,
        minimumSize: Size(380, 58),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),),
      child: Text(
        "Ro'yxatdan o'tish",
        style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Colors.white),
      ),
    );
  }
}