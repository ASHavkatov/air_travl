class FeatureModel {
  final int order;
  final String title;

  FeatureModel({
    required this.order,
    required this.title,
  });

  factory FeatureModel.fromJson(Map<String, dynamic> json) {
    return FeatureModel(
      order: json['order'],
      title: json['title'],
    );
  }
}
