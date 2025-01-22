import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';
import 'package:treval_app/homepage/presentation/widgets/flight_calendar_container.dart';

class FlightLandRow extends StatelessWidget {
  const FlightLandRow({
    super.key,
    required this.flight_svg,
    required this.land_svg,
  });

  final String flight_svg, land_svg;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(flight_svg),
        SizedBox(width: 8,),
        FlightCalendarContainer(withes: 61, text: "14 Okt"),
        SizedBox(width: 8,),
        SvgPicture.asset(land_svg),
        SizedBox(width: 8,),
        FlightCalendarContainer(withes: 61, text: "27 Okt")
      ],
    );
  }
}
