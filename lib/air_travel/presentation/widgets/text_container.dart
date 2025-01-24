import 'package:flutter/material.dart';

import '../../../homepage/presentation/widgets/texts_main.dart';

class TextContainer extends StatelessWidget {
  const TextContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      width: 398,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(1, 1),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 8,
            left: 8,
            child: TextsMain(text: 'Umra safari'),
          ),
          Positioned(
            top: 30,
            left: 8,
            child: Text(
              'Viza, Aviachiptalar, Transferlar, Mehmonxonalar (4 va 5 yulduzli), \nOvqat (2 mahal milliy taom), Ekskursiyalar, Transport xizmati, \nZamzam suvi (5 litr)',
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
