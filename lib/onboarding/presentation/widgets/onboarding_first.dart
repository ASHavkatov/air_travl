import 'package:flutter/material.dart';



class OnboardingPageV1 extends StatelessWidget {
  const OnboardingPageV1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Image.asset(
          'assets/images/onboarding/onboarding_1.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
        ),
        Container(
          width: double.infinity,
          height: 550,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withValues(alpha: 0.7),
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome to 👋',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Urbanist',
                    fontSize: 48),
              ),
              Text(
                'AirTravels',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Urbanist',
                    fontSize: 64),
              ),
              Text(
                'The best furniture e-commerce app of the\ncentury for your daily needs!',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Urbanist',
                    fontSize: 16),
              ),
              SizedBox(
                height: 84,
              )
            ],
          ),
        )
      ],
    );
  }
}