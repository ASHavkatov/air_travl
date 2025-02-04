import 'package:flutter/material.dart';
import 'package:treval_app/onboarding/presentation/pages/onboarding_view.dart';
import 'package:treval_app/onboarding/presentation/widgets/onboarding_first.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          OnboardingPageV1(),
          OnboardingView(),


        ],
      ),
    );
  }
}
