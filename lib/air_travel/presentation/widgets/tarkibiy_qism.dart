import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

import '../../../core/utils/colors.dart';

class TarkibiyQism extends StatelessWidget {
  const TarkibiyQism({
    super.key,
    required this.svg,
    required this.text,
    required this.width,
  });

  final String svg, text;
  final double width ;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 19,
      width: width,
      decoration: BoxDecoration(
          border: Border.all(color: AppColor.shoshilingcontainer1),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(1),
            child: Container(
              height: 16,
              width: 15,
              decoration: BoxDecoration(
                color: AppColor.shoshilingcontainer1,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: SvgPicture.asset(svg),
              ),
            ),
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            text,
            style: TextStyle(
              color: AppColor.mainpagetextcolor,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              fontFamily: 'Urbanist',
              height: 1,
            ),
          ),
        ],
      ),
    );
  }
}