import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:treval_app/air_travel/presentation/pages/detail_page.dart';
import 'package:treval_app/onboarding/presentation/pages/onboarding_page.dart';
import 'package:treval_app/homepage/presentation/pages/travel_main_page.dart';


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
  ],
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
