import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:treval_app/core/utils/colors.dart';
import 'package:treval_app/homepage/presentation/widgets/afzallik_container.dart';
import 'package:treval_app/homepage/presentation/widgets/calendar_container.dart';
import 'package:treval_app/homepage/presentation/widgets/chegirmalar_container_two.dart';
import 'package:treval_app/homepage/presentation/widgets/flight_calendar_container.dart';
import 'package:treval_app/homepage/presentation/widgets/flight_land_row.dart';
import 'package:treval_app/homepage/presentation/widgets/heart_container.dart';
import 'package:treval_app/homepage/presentation/widgets/siz_plus.dart';
import 'package:treval_app/homepage/presentation/widgets/sugurta_chipta_etc.dart';
import 'package:treval_app/homepage/presentation/widgets/texts_main.dart';
import 'package:treval_app/sevimlilar/presentation/widgets/chegirmalar_container.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({
    super.key,
    required this.makka_photo,
  });

  final String makka_photo;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 302,
      height: 670,
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 4,
          color: Colors.grey.withValues(alpha: 0.5),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        spacing: 10,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage(makka_photo),
                  width: double.infinity,
                  height: 169,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 17,
                top: 23,
                child: FlightCalendarContainer(withes: 59, text: "14 kun"),
              ),
              Positioned(
                right: 21,
                top: 21,
                child: HeartContainer(svg: "assets/icons/heart.svg"),
              ),
              Positioned(
                bottom: 13,
                left: 50,
                child: FlightLandRow(
                    flight_svg: "assets/icons/flight.svg",
                    land_svg: 'assets/icons/landing.svg'),
              )
            ],
          ),
          // SizedBox(height: 8,),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: TextsMain(text: "Umra Safari"),
            ),
          ),
          // SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: [
                CalendarContainer(
                    svg: "assets/icons/newcalendar.svg",
                    text: "10",
                    text1: "KUN",
                    text2: "Madinada"),
                SizedBox(
                  width: 10,
                ),
                CalendarContainer(
                    svg: "assets/icons/newcalendar.svg",
                    text: "5",
                    text1: "KUN",
                    text2: "Makkada"),
              ],
            ),
          ),
          // SizedBox(height: 15,),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: TextsMain(
                text: "Sayohat tarkibi",
              ),
            ),
          ),
          // SizedBox(height: 12,),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Row(
                children: [
                  Sugurta_and_chipta(
                      svg: 'assets/icons/transport.svg',
                      text: "Sug'urta",
                      widths: 68),
                  SizedBox(
                    width: 3,
                  ),
                  Sugurta_and_chipta(
                      svg: 'assets/icons/transport.svg',
                      text: "Chipta",
                      widths: 68),
                  SizedBox(
                    width: 3,
                  ),
                  Sugurta_and_chipta(
                      svg: 'assets/icons/transport.svg',
                      text: "Viza",
                      widths: 48),
                  SizedBox(
                    width: 6,
                  ),
                  SizPlus(boyi: 33, eni: 19)
                ],
              ),
            ),
          ),
          // SizedBox(height: 6,),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: TextsMain(text: "Tariflar"),
            ),
          ),
          // SizedBox(height: 3,),
          SizedBox(
            height: 140,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                 AfzallikContainer(title: "Ekonom", text: "1200\$", text1: "1300\$", afzallik: "Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus fugit, iste unde voluptatem tempore vero eveniet quia conseq ...yana "),
                  SizedBox(
                    width: 8,
                  ),
                  ChegirmalarContainerTwo(
                      title: "Standart", text: "1400\$", text1: "1600\$", afzallik: "Afzalliklar",),
                  SizedBox(
                    width: 3,
                  ),
                  ChegirmalarContainerTwo(
                      title: "Premium", text: "1600\$", text1: "1800\$", afzallik: "Afzalliklar",),
                ],
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColor.mainpagetextcolor,
              fixedSize: Size(260, 20),
              elevation: 5,
            ),
            onPressed: () {
              context.go("/batafsil");
            },
            child: Text("Batafsil...",
                style: TextStyle(
                    color: AppColor.containerinsidetextcolor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: 'Urbanist,')),
          ),
        ],
      ),
    );
  }
}
