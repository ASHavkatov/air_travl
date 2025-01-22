import 'package:treval_app/BatafsilPage/data/models/activities_hotel_model.dart';
import 'package:treval_app/BatafsilPage/data/models/activities_place_model.dart';

class ActivitiesModel {
  final String type, title, time, from, to;

  List<ActivitiesHotelModel> activitieshotel;
  List<ActivitiesPlaceModel> activitiesplace;

  ActivitiesModel({
    required this.type,
    required this.title,
    required this.time,
    required this.from,
    required this.to,
    required this.activitieshotel,
    required this.activitiesplace,
  });

  factory ActivitiesModel.fromJson(Map<String, dynamic> json) {
    var rawActivitiesHotel = json['activitieshotel'] as List<dynamic>;
    var rawActivitiesPlace = json['activitiesplace'] as List<dynamic>;
    return ActivitiesModel(
      type: json['type'],
      title: json['title'],
      time: json['time'],
      from: json['from'],
      to: json['to'],
      activitieshotel: rawActivitiesHotel.map((activityhotel)=> ActivitiesHotelModel.fromJson(activityhotel)).toList(),
      activitiesplace: rawActivitiesPlace.map((activityplace)=> ActivitiesPlaceModel.fromJson(activityplace)).toList()
    );
  }
}
