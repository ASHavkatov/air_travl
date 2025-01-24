import 'package:flutter/material.dart';
import 'package:treval_app/air_travel/presentation/widgets/paska_arrow.dart';



class SayohatdagiNarsalar2 extends StatelessWidget {
  const SayohatdagiNarsalar2({
    super.key,
    required this.text,
    required this.image,
    required this.time,
    required this.adress,
    required this.title,
  });

  final String text, image, time, adress, title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          height: 123,
          width: 284,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: const Offset(1, 0),
                blurRadius: 4,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      text,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Urbanist'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      time,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Urbanist'),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Image.asset(image, fit: BoxFit.cover),
                        SizedBox(
                          width: 12,
                        ),
                        Column(
                          spacing: 10,
                          children: [
                            Row(
                              children: [
                                Text(
                                  adress,
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontFamily: 'Urbanist',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  '150m',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Urbanist'),
                                )
                              ],
                            ),
                            // SizedBox(
                            //   height: 9,
                            // ),
                            Text(
                              title,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Urbanist',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 8),
                            ),
                            // SizedBox(
                            //   height: 6,
                            // )
                            PaskaArow()
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}