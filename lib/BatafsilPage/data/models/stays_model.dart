import 'package:treval_app/BatafsilPage/data/models/features_model.dart';

class StaysModel {
  final int id, days;
  final String city;


  StaysModel({
    required this.id,
    required this.days,
    required this.city,
  });

  factory StaysModel.fromJson(Map<String, dynamic> json) {
    return StaysModel(
      id: json['id'],
      days: json['days'],
      city: json['city'],
    );
  }
}
