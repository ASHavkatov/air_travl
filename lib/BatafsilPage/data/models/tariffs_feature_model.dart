class TariffsFeatureModel {
  final int order;
  final String title, image;

  TariffsFeatureModel({
    required this.order,
    required this.title,
    required this.image,
  });

  factory TariffsFeatureModel.fromJson(Map<String, dynamic> json) {
    return TariffsFeatureModel(
      order: json['order'],
      title: json['title'],
      image: json['image'],
    );
  }
}
