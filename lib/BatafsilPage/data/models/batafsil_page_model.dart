class BatafsilPageModel {
  final int id, order;
  final String image;

  BatafsilPageModel({
    required this.id,
    required this.order,
    required this.image,
  });

  factory BatafsilPageModel.fromJson(Map<String, dynamic> json) {
    return BatafsilPageModel(
      id: json['id'],
      order: json['order'],
      image: json['image'],
    );
  }
}
