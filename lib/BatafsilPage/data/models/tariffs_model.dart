import 'package:treval_app/BatafsilPage/data/models/tariffs_feature_model.dart';

class TariffsModel {
  final int id, priceAfter, priceBefore;
  final String title;

  List<TariffsFeatureModel> features;

  TariffsModel({
    required this.id,
    required this.priceAfter,
    required this.priceBefore,
    required this.title,
    required this.features
  });

  factory TariffsModel.fromJson(Map<String, dynamic> json) {
    var rawTarrifs = json['features'] as List<dynamic>;
    return TariffsModel(
      id: json['id'],
      priceAfter: json['priceAfter'],
      priceBefore: json['priceBefore'],
      title: json['title'],
      features: rawTarrifs.map((tariffs)=> TariffsFeatureModel.fromJson(tariffs)).toList()
    );
  }
}
