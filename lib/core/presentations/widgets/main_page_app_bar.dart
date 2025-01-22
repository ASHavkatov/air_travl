import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';
import 'package:treval_app/core/utils/colors.dart';

class MainPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainPageAppBar({super.key});

  @override
  Size get preferredSize => Size(100, 100);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(200),
      child: AppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: GestureDetector(
            onTap: (){
              context.go("/");
            },
            child: SvgPicture.asset('assets/icons/back-arrow.svg'),
          ),
        ),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(right: 140),
          child: Text(
            'Sevimlilar',
            style: TextStyle(
              color: AppColor.mainpagetextcolor,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w700,
              fontSize: 24,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: SvgPicture.asset('assets/icons/search.svg'),
          )
        ],
      ),
    );
  }
}
