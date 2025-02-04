import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:treval_app/core/utils/colors.dart';

import '../widgets/onboarding_view_container.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  int currentIndex = 0;
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            onPageChanged: (index) => setState(() {
              currentIndex = index;
            }),
            controller: controller,
            children: [
              Image.asset(
                'assets/images/onboarding/onboarding_2.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/onboarding/onboarding_3.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/onboarding/onboarding_4.png',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ],
          ),
          GestureDetector(
            onHorizontalDragEnd: (details) {
              if (details.primaryVelocity! < 0) {
                controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear);
              } else if (details.primaryVelocity! > 0 && currentIndex != 0) {
                controller.previousPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.linear);
              } else if (details.primaryVelocity! > 0 && currentIndex == 0) {
                context.pop();
              }
            },
            child: OnboardingViewContainer(
              controller: controller,
              currentIndex: currentIndex,
            ),
          ),
        ],
      ),
    );
  }
}


