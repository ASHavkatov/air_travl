import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:treval_app/core/utils/colors.dart';

class SevimlilarMainContainer extends StatelessWidget {
  const SevimlilarMainContainer({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.image,
    required this.svg,
    required this.svg1,
    required this.svg2,


  });

  final String text1, text2, text3, image, svg, svg1, svg2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
          children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            width: 361,
            height: 222,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 100,
            left: 20,
          ),
          child: Container(
            width: 59,
            height: 21,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColor.mainpagetextcolor,
            ),
            child: Center(
              child: Text(
                text1,
                style: TextStyle(
                    color: AppColor.containerinsidetextcolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Urbanist'),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
            left: 312,
            bottom: 100,
          ),
          child: Container(
            width: 28,
            height: 28,
            decoration: BoxDecoration(
              color: AppColor.mainpagetextcolor,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Center(child: SvgPicture.asset(svg)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 60,
            top: 185,
          ),
          child: SvgPicture.asset(svg1),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 90, top: 185),
          child: Container(
            width: 78,
            height: 21,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColor.mainpagetextcolor,
            ),
            child: Center(
              child: Text(
                text2,
                style: TextStyle(
                    color: AppColor.containerinsidetextcolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Urbanist'),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 180,
            top: 185,
          ),
          child: SvgPicture.asset(svg2),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 215, top: 185),
          child: Container(
            width: 78,
            height: 21,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6),
              color: AppColor.mainpagetextcolor,
            ),
            child: Center(
              child: Text(
                text3,
                style: TextStyle(
                    color: AppColor.containerinsidetextcolor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Urbanist'),
              ),
            ),
          ),
        ),
      ]),
    );

  }
}
