import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:treval_app/core/utils/colors.dart';


class TarifContainer extends StatelessWidget {
  const TarifContainer(
      {super.key,
        required this.tarif,
        required this.narx1,
        required this.narx2,
        this.text = '',
        required this.border});

  final String tarif, narx1, narx2, text;
  final Color border;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.all(8),
          width: 189,
          height: 263,
          decoration: BoxDecoration(
            color: AppColor.shoshilingcontainer1,
            border: Border.all(color: border, width: 3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    narx1,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'Urbanist',
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    narx2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontFamily: 'Urbanist',
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 2.5,
                      decorationColor: Colors.white,
                    ),
                  ),
                ],
              ),
              Text(
                'Afzalliklari',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Urbanist',
                    fontSize: 8),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                      width: 14,
                      height: 13,
                      child: SvgPicture.asset('assets/icons/plane.svg')),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'To\'g\'ridan-to\'g\'ri reys Toshkent\n Jidda Toshkent ',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                        fontSize: 8),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/bus.svg'),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Zamonaviy va qulay avtobuslar',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                        fontSize: 8),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/medical.svg'),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Tibbiy sug\'urta',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                        fontSize: 8),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/people.svg'),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Tajribali yo\'l boshlovchi',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Urbanist',
                        fontWeight: FontWeight.w500,
                        fontSize: 8),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Urbanist',
                ),
              ),
            ],
          ),
        ),
        Positioned(
          top: 2,
          left: 3,
          child: Container(
            width: 26,
            height: 22,
            decoration: BoxDecoration(
              color: AppColor.chegirmacolor,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(10),
                topLeft: Radius.circular(7),
              ),
            ),
            child: Center(
              child: Text(
                '20%',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: -15,
          left: 56,
          right: 47,
          child: Container(
            width: 86,
            height: 29,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColor.sixcontainerborder),
            ),
            child: Center(
              child: Text(
                tarif,
                style: TextStyle(
                    color: AppColor.shoshilingcontainer1,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Urbanist'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}