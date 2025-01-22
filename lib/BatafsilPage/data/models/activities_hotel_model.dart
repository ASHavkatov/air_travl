class ActivitiesHotelModel {
  final String type, title, time, hotel_place, description;

  ActivitiesHotelModel({
    required this.type,
    required this.title,
    required this.time,
    required this.hotel_place,
    required this.description,
  });

  factory ActivitiesHotelModel.fromJson(Map<String, dynamic> json) {
    return ActivitiesHotelModel(
      type: json['type'],
      title: json['title'],
      time: json['time'],
      hotel_place: json['hotel_place'],
      description: json['description'],
    );
  }
}
