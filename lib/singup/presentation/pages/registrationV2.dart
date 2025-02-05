import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinput/pinput.dart';
import 'package:svg_flutter/svg.dart';
import 'package:treval_app/core/utils/colors.dart';
import 'package:treval_app/singup/presentation/widgets/elevated_text.dart';

class RegistrationV2 extends StatelessWidget {
  const RegistrationV2({super.key});

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
          'Kodni kiriting',
          style: TextStyle(
              color: AppColor.textmain,
              fontWeight: FontWeight.w700,
              fontSize: 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sms kodni kiritng",
              style: TextStyle(
                color: AppColor.textmain,
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 70),
            Pinput(
              length: 4,
              obscureText: true,
              obscuringWidget: Icon(Icons.circle, size: 27, color: Colors.black),
              defaultPinTheme: PinTheme(
                width: 83,
                height: 62,
                textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
        SizedBox(height: 60),
        ElevatedButton(
          onPressed: () {
            context.go('/registrationv3');
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColor.shoshilingcontainer1,
            minimumSize: Size(380, 58),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),),
          child: ElevatedText(text: "Tasdiqlash"),
        )
          ],
        ),
      ),
    );
  }
}
