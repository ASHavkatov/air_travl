
import 'package:flutter/material.dart';

class SayohatdagiNarsalar extends StatelessWidget {
  const SayohatdagiNarsalar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 49),
      height: 123,
      width: 284,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: const Offset(1, 0),
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Uchish',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Urbanist'
                ),
              ),
              SizedBox(width: 137,),
              Text(
                '8:30 am',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Urbanist'
                ),
              ),
            ],
          ),
          SizedBox(height: 19,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Qayerdan',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Urbanist'
                ),
              ),
              SizedBox(width: 98,),
              Text(
                'Toshkent',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Urbanist'
                ),
              ),
            ],
          ),
          SizedBox(height: 9,),
          Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Qayerga',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Urbanist'
                ),
              ),
              SizedBox(width: 98,),
              Text(
                'Madina ',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Urbanist'
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}