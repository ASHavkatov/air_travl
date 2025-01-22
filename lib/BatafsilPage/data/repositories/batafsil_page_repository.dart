import 'package:treval_app/BatafsilPage/data/models/batafsil_page_model.dart';
import 'package:treval_app/core/client.dart';

class BatafsilPageRepository{

  BatafsilPageRepository({
    required this.client,
});

  final ApiClient client;

  Future<List<BatafsilPageModel>> fetchSpecialOffers() async {
    var rawModel = await client.fetchSpecialOffers();
    return rawModel.map((data)=> BatafsilPageModel.fromJson(data)).toList();
  }
}