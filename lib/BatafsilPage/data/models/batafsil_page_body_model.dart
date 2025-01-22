import 'package:treval_app/BatafsilPage/data/models/calendars_model.dart';
import 'package:treval_app/BatafsilPage/data/models/features_model.dart';
import 'package:treval_app/BatafsilPage/data/models/stays_model.dart';
import 'package:treval_app/BatafsilPage/data/models/tariffs_model.dart';

class BatafsilPageBodeyModel {
  final int id;
  final String title, description, start_data, end_data;

  List<StaysModel> stay;
  List<FeatureModel> feature;
  List<TariffsModel> tariffs;
  List<CalendarModel> calendar;

  BatafsilPageBodeyModel({
    required this.id,
    required this.title,
    required this.description,
    required this.start_data,
    required this.end_data,
    required this.stay,
    required this.feature,
    required this.tariffs,
    required this.calendar,
  });

  factory BatafsilPageBodeyModel.fromJson(Map<String, dynamic> json) {
    var rawStay = json['stay'] as List<dynamic>;
    var rawFeature = json['feature'] as List<dynamic>;
    var rawTariffs = json['tariffs'] as List<dynamic>;
    var rawCalendar = json['calendar'] as List<dynamic>;
    return BatafsilPageBodeyModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      start_data: json['start_data'],
      end_data: json['end_data'],
      stay: rawStay.map((stays)=> StaysModel.fromJson(stays)).toList(),
      feature: rawFeature.map((features)=> FeatureModel.fromJson(features)).toList(),
      tariffs: rawTariffs.map((tariff)=> TariffsModel.fromJson(tariff)).toList(),
      calendar: rawCalendar.map((calendars)=> CalendarModel.fromJson(calendars)).toList()
    );
  }
}
