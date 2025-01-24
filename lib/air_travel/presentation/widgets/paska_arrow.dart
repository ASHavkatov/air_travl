import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

import '../../../core/utils/colors.dart';

class PaskaArow extends StatelessWidget {
  const PaskaArow({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 64,
          height: 1,
          color: Colors.black,
        ),
        Positioned(
          top: -8,
          right: 0,
          left: 0,
          child: Center(
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: AppColor.sixcontainerborder,
                ),
              ),
              alignment: Alignment.center,
              child: SvgPicture.asset('assets/icons/down-arrow.svg'),
            ),
          ),
        ),
      ],
    );
  }
}