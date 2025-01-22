import 'package:treval_app/BatafsilPage/data/models/activities_model.dart';

class CalendarModel {
  final int day;

  List<ActivitiesModel> activities;

  CalendarModel({
    required this.day,
    required this.activities,
  });

  factory CalendarModel.fromJson(Map<String, dynamic> json) {
    var rawActivities = json['activities'] as List<dynamic>;
    return CalendarModel(
      day: json['day'],
      activities: rawActivities.map((activity)=> ActivitiesModel.fromJson(activity)).toList()
    );
  }
}
