import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/utils/colors.dart';


class Savatga extends StatelessWidget {
  const Savatga({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      width: 391,
      height: 78,
      color: Colors.white,
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Jami qiymat',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                '1200\$',
                style: TextStyle(
                  color: AppColor.shoshilingcontainer1,
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Urbanist',
                ),
              ),
            ],
          ),
          SizedBox(
            width: 32,
          ),
          Container(
            height: 58,
            width: 270,
            decoration: BoxDecoration(
              color: AppColor.shoshilingcontainer1,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/bag.svg'),
                SizedBox(
                  width: 16,
                ),
                Text(
                  'Buyurtma berish',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w700,
                      height: 1),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}