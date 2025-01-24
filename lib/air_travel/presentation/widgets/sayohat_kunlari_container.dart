import 'package:flutter/material.dart';
import 'package:treval_app/air_travel/presentation/widgets/sayohat_kunlari.dart';
import 'package:treval_app/air_travel/presentation/widgets/sayohatdagi_narsalar.dart';

import 'sayohat_narsalar2.dart';

class SayohatKundaligiContainer extends StatelessWidget {
  const SayohatKundaligiContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 552,
      width: 397,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              offset: const Offset(1, 0),
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ]),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 23, top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SayohatKunlari(kun: '1', text: '14okt'),
                SizedBox(
                  width: 9,
                ),
                SayohatKunlari(kun: '2', text: '15okt'),
                SizedBox(
                  width: 9,
                ),
                SayohatKunlari(kun: '3', text: '16okt'),
                SizedBox(
                  width: 9,
                ),
                SayohatKunlari(kun: '4', text: '17okt'),
                SizedBox(
                  width: 9,
                ),
                SayohatKunlari(kun: '6', text: '18okt'),
              ],
            ),
          ),
          SizedBox(
            height: 14,
          ),
          SayohatdagiNarsalar(),
          SizedBox(
            height: 23,
          ),
          SayohatdagiNarsalar2(
            text: 'Mexmonxona',
            image: 'assets/images/offers/mexmonxona.png',
            time: '11:30 am',
            adress: 'New madina hotel',
            title:
            'New Madinah mehmonxonasining\nhar bir xonasida vanna va xalat\nbilan jihozlangan shaxsiy ... ',
          ),
          SizedBox(height: 12),
          SayohatdagiNarsalar2(
            text: 'Ziyoratgoh',
            image: 'assets/images/offers/ziyoratgoh.png',
            time: '8:30 am',
            adress: 'Arofat tog\'i',
            title: 'Arafot — Makkadan 20 km\nuzoqlikda joylashgan, 11 — 12 km\nva kengligi 6,5 km boʻlgan vodiy...',
          ),
        ],
      ),
    );
  }
}
