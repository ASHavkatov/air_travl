class ActivitiesPlaceModel {
  final String type, title, time, place_name, description;

  ActivitiesPlaceModel({
    required this.type,
    required this.title,
    required this.time,
    required this.place_name,
    required this.description,
  });

  factory ActivitiesPlaceModel.fromJson(Map<String, dynamic> json) {
    return ActivitiesPlaceModel(
      type: json['type'],
      title: json['title'],
      time: json['time'],
      place_name: json['place_name'],
      description: json['description'],
    );
  }
}
