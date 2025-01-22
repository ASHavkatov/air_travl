import 'package:flutter/material.dart';
import 'package:treval_app/homepage/presentation/widgets/main_body_items.dart';
import 'package:treval_app/homepage/presentation/widgets/navigation_bar.dart';

class TravelMainPage extends StatelessWidget {
  const TravelMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: MainBodyItems(),
      bottomNavigationBar: NavBar(),
      );
  }
}
