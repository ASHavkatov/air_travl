import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class animatedCon extends StatelessWidget {
  const animatedCon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 32,
      height: 8,
      decoration: BoxDecoration(
        color: AppColor.shoshilingcontainer1,
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}

