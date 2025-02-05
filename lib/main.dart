import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:treval_app/air_travel/presentation/pages/detail_page.dart';
import 'package:treval_app/onboarding/presentation/pages/onboarding_page.dart';
import 'package:treval_app/homepage/presentation/pages/travel_main_page.dart';
import 'package:treval_app/singup/presentation/pages/registration.dart';
import 'package:treval_app/singup/presentation/pages/registrationv3.dart';

import 'singup/presentation/pages/registrationV2.dart';

GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => TravelMainPage(),
    ),
    GoRoute(
      path: '/detail',
      builder: (context, state) => DetailPage(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => OnBoarding(),
    ),
    GoRoute(
      path: '/registration',
      builder: (context, state) => Registration(),
    ),
    GoRoute(
      path: '/registrationv2',
      builder: (context, state) => RegistrationV2(),
    ),
    GoRoute(
      path: '/registrationv3',
      builder: (context, state) => RegistrationV3(),
    ),
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   home: RegistrationV3(),
    // );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
