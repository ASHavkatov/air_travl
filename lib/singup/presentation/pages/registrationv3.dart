import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:treval_app/singup/presentation/widgets/elevated_text.dart';
import 'package:treval_app/singup/presentation/widgets/elevateddtext2.dart';

import '../../../core/utils/colors.dart';

// ignore: must_be_immutable
class RegistrationV3 extends StatefulWidget {
  RegistrationV3({super.key});

  @override
  State<RegistrationV3> createState() => _RegistrationV3State();
}

class _RegistrationV3State extends State<RegistrationV3> {
  final List<String> viloyat = [
    'Toshkent',
    'Andijon',
    'Buxoro',
    'Farg\'ona',
    'Jizzax',
    'Qashqadaryo',
    'Navoiy',
    'Namangan',
    'Samarqand',
    'Sirdaryo',
    'Surxondaryo',
    'Xorazm'
  ];

  String? tanlanganviloyat;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Center(
          child: SvgPicture.asset("assets/icons/back_arrow.svg"),
        ),
        title: Text(
          "Ma'lumotlarni kiriting",
          style: TextStyle(
              color: AppColor.textmain,
              fontWeight: FontWeight.w700,
              fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Image.asset(
                  "assets/images/offers/anonim_profile.png",
                  width: 140,
                  height: 140,
                ),
                Positioned(
                  top: 107,
                  left: 107,
                  right: 3,
                  bottom: 3,
                  child: SvgPicture.asset('assets/icons/qalamcha.svg'),
                ),
              ],
            ),
            SizedBox(height: 24),
            TextField2(text: "Ismingiz"),
            SizedBox(height: 24),
            TextField2(text: "Famiilyangiz"),
            SizedBox(height: 24),
            TextField2(text: "+998 99 919-31-11"),
            SizedBox(height: 24),
            SizedBox(
              width: 360,
              child: DropdownMenu<String>(
                inputDecorationTheme: InputDecorationTheme(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                ),
                width: double.infinity,
                hintText: "Viloyatlar",
                textStyle: TextStyle(
                  color: Colors.grey.withValues(alpha: 0.8),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                initialSelection: tanlanganviloyat,
                dropdownMenuEntries: viloyat.map((region) {
                  return DropdownMenuEntry(
                    value: region,
                    label: region,
                  );
                }).toList(),
                onSelected: (YangiTanlov) {
                  setState(() {});
                },
              ),
            ),
            SizedBox(height: 200),
            ElevatedButton(
              onPressed: () {
                context.go('/home');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColor.shoshilingcontainer1,
                minimumSize: Size(380, 58),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              child: ElevatedText(text: "Saqlash"),
            ),
          ],
        ),
      ),
    );
  }
}
