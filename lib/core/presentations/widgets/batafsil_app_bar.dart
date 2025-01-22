import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:svg_flutter/svg.dart';

class BatafsilAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String svg;

  BatafsilAppBar({Key? key, required this.svg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: (){
          context.go("/");
        },
          icon: SvgPicture.asset(svg)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
