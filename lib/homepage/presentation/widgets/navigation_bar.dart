import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:treval_app/core/utils/colors.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selected_index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: selected_index,
      onTap: (index) {
        setState(() {
          selected_index = index;
        });
      },
      selectedItemColor: AppColor.mainpagetextcolor,
      unselectedItemColor: AppColor.containerbordercolor,
      type: BottomNavigationBarType.shifting,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/home.svg',
            color: selected_index == 0 ? AppColor.mainpagetextcolor: AppColor.containerbordercolor,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/sumka.svg',
            color: selected_index == 1 ? AppColor.mainpagetextcolor: AppColor.containerbordercolor,

          ),
          label: "Cart",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/orders.svg',
            color: selected_index == 2 ? AppColor.mainpagetextcolor: AppColor.containerbordercolor,

          ),
          label: "Orders",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/wallet.svg',
            color: selected_index == 3 ? AppColor.mainpagetextcolor: AppColor.containerbordercolor,

          ),
          label: "Wallet",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icons/profile.svg',
            color: selected_index == 4 ? AppColor.mainpagetextcolor : AppColor.containerbordercolor,

          ),
          label: "Profile",
        ),
      ],
    );
  }
}
