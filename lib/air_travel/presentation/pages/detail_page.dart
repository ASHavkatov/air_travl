import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:treval_app/air_travel/presentation/widgets/calendar_container.dart';
import 'package:treval_app/air_travel/presentation/widgets/savatga.dart';
import 'package:treval_app/air_travel/presentation/widgets/sayohat_kunlari_container.dart';
import 'package:treval_app/air_travel/presentation/widgets/tarif_container.dart';
import 'package:treval_app/air_travel/presentation/widgets/tarkibiy_qism.dart';
import 'package:treval_app/air_travel/presentation/widgets/text_container.dart';
import 'package:treval_app/air_travel/presentation/widgets/texts_main.dart';
import 'package:treval_app/core/utils/colors.dart';
import 'package:treval_app/homepage/presentation/widgets/navigation_bar.dart';
import 'package:treval_app/homepage/presentation/widgets/time_container.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavBar(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Center(
          child: SvgPicture.asset(
            'assets/icons/arrow_left.svg',
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/places/makka.png',
                height: 311,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 16,
              ),
              TextContainer(),
              SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    CalendarContainer(
                        svg: 'assets/icons/calendar.svg',
                        text: "10",
                        text1: "KUN",
                        text2: "Madinada"),
                    SizedBox(
                      width: 10,
                    ),
                    CalendarContainer(
                        svg: 'assets/icons/calendar.svg',
                        text: "5",
                        text1: "KUN",
                        text2: "Makkada"),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 210),
                child: TextsMain(text: 'Sayohat tarkibi'),
              ),
              SizedBox(height: 2),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TarkibiyQism(
                      svg: 'assets/icons/tick.svg',
                      text: 'Sug\'urta',
                      width: 70,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    TarkibiyQism(
                      svg: 'assets/icons/tick.svg',
                      text: 'Chipta',
                      width: 68,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    TarkibiyQism(
                      svg: 'assets/icons/tick.svg',
                      text: 'Aviachipta',
                      width: 83,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    TarkibiyQism(
                      svg: 'assets/icons/tick.svg',
                      text: 'Viza',
                      width: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9),
              Padding(
                padding: const EdgeInsets.only(left: 14, right: 200),
                child: TextsMain(text: 'Sayohat kundaligi'),
              ),
              SizedBox(height: 16),
              SayohatKundaligiContainer(),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(right: 330),
                child: TextsMain(text: "Tariflar"),
              ),
              SizedBox(height: 23),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TarifContainer(
                    tarif: 'Ekonom',
                    narx1: '1200\$',
                    narx2: '1300\$',
                    text:
                        'Lorem ipsum dolor sit amet consectetur\nadipisicing elit. Temporibus fugit, iste unde\nvoluptatem tempore vero eveniet quia\nconseq',
                    border: AppColor.chegirmacolor,
                  ),
                  TarifContainer(
                    tarif: 'Standart',
                    narx1: '1400\$',
                    narx2: '1600\$',
                    border: AppColor.shoshilingcontainer1,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Savatga()
            ],
          ),
        ],
      ),
    );
  }
}

