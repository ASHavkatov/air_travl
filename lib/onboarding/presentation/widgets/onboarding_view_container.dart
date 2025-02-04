import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:treval_app/onboarding/presentation/widgets/animated_container2.dart';

import '../../../core/utils/colors.dart';
import 'animated_container1.dart';


class OnboardingViewContainer extends StatelessWidget {
  final PageController controller;
  final int currentIndex;

  const OnboardingViewContainer({
    super.key,
    required this.controller,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    final List<String> texts = [
      "We provide high quality products just for you",
      "Your satisfaction is our number one priority",
      "Let's fulfill your house needs with Funica right now!",
    ];
    return Container(
      width: double.infinity,
      height: 370,
      padding: EdgeInsets.fromLTRB(24, 32, 24, 48),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
      ),
      child: Column(
        children: [
          Text(
            texts[currentIndex],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          Positioned(
            bottom: 146,
            right: 0,
            left: 0,
            child: Center(
              child: AnimatedContainer(
                width: 60,
                height: 8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                duration: Duration(milliseconds: 300),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    currentIndex == 0 ? animatedCon() : animatedCon2(),
                    currentIndex == 1 ? animatedCon() : animatedCon2(),
                    currentIndex == 2 ? animatedCon() : animatedCon2(),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 45),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.shoshilingcontainer1,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              minimumSize: Size(380, 58),
            ),
            onPressed: () {
              if (currentIndex < 2) {
                controller.nextPage(
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeInOut,
                );
              } else {
                context.go('/home');
              }
            },
            child: Text(
              currentIndex < 2 ? "Keyingi" : "Boshlash",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
