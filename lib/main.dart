import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:treval_app/BatafsilPage/data/repositories/batafsil_page_repository.dart';
import 'package:treval_app/BatafsilPage/presentation/pages/batafsil_page_view_model.dart';
import 'package:treval_app/air_travel/presentation/pages/detail_page.dart';
import 'package:treval_app/onboarding/presentation/pages/onboarding_page.dart';
import 'package:treval_app/onboarding/presentation/pages/onboarding_view.dart';
import 'package:treval_app/air_travel/presentation/pages/sevimlilar_main_page.dart';
import 'package:treval_app/core/client.dart';
import 'package:treval_app/homepage/presentation/pages/travel_main_page.dart';
import 'package:treval_app/onboarding/presentation/widgets/onboarding_first.dart';

import 'BatafsilPage/presentation/pages/batafsil_page_view.dart';

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
