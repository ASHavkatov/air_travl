import 'package:flutter/material.dart';

class SayohatKunlari extends StatelessWidget {
  const SayohatKunlari({
    super.key,
    required this.kun,
    required this.text,
  });

  final String kun, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 63,
      decoration: BoxDecoration(
        color: Colors.grey.withValues(alpha: 0.4),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                kun,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Urbanist'),
              ),
              SizedBox(
                width: 2,
              ),
              Text(
                'Kun',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Urbanist'),
              ),
            ],
          ),
          Text(
            text,
            style: TextStyle(
                color: Colors.black,
                fontSize: 10,
                fontWeight: FontWeight.w700,
                fontFamily: 'Urbanist'),
          ),
        ],
      ),
    );
  }
}