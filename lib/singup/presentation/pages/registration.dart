import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:treval_app/core/utils/colors.dart';
import 'package:treval_app/singup/presentation/widgets/elevated_text.dart';
import '../widgets/tetx_field.dart';

// ignore: must_be_immutable
class Registration extends StatelessWidget {
   Registration({super.key,});
   var controller = TextEditingController();
   late String PhoneNumber;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Center(
          child: SvgPicture.asset(
            'assets/icons/back_arrow.svg',
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 144),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/icons/logo_flutter.svg',
                colorFilter: ColorFilter.mode(
                  Colors.grey.withValues(alpha: 0.2),
                  BlendMode.srcIn,
                ),
              ),
              SizedBox(
                height: 55,
              ),
              Text(
                "Ro'yxatdan o'tish",
                style: TextStyle(
                  color: AppColor.textmain,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              SizedBox(height: 55),
              TextFiled(),
              SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              PhoneNumber = controller.value.text;
              context.go("/registrationv2");
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.shoshilingcontainer1,
              minimumSize: Size(380, 58),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
              ),),
            child: ElevatedText(text: "Ro'yxatdan o'tish")
          ),

            ],
          ),
        ),
      ),
      // body: ,
    );
  }
}





