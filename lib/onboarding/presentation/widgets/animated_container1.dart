import 'package:flutter/material.dart';
import 'package:treval_app/core/utils/colors.dart';

class animatedCon2 extends StatelessWidget {
  const animatedCon2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        color: AppColor.shoshilingcontainer1,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}