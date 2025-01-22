import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:treval_app/core/utils/colors.dart';

class NonushtaContainer extends StatelessWidget {
  const NonushtaContainer({
    super.key,
    required this.text,
    required this.svg,
  });

  final String text, svg;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 18.5,
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColor.mainpagetextcolor,
            width: 2,
          ),
          color: AppColor.containerinsidetextcolor,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 1),
        child: Row(
          children: [
            SvgPicture.asset(svg),
            SizedBox(
              width: 2,
            ),
            Text(
              text,
              style: TextStyle(
                color: AppColor.mainpagetextcolor,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                fontFamily: 'Urbanist',
              ),
            )
          ],
        ),
      ),
    );
  }
}
