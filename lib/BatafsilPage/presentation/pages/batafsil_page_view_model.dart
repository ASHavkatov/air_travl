import 'package:flutter/cupertino.dart';
import 'package:treval_app/BatafsilPage/data/models/batafsil_page_model.dart';
import 'package:treval_app/BatafsilPage/data/repositories/batafsil_page_repository.dart';

class BatafsilPageViewModel extends ChangeNotifier{
  BatafsilPageViewModel({
    required BatafsilPageRepository repo,
}): _repo = repo{
    load();
  }


  final BatafsilPageRepository _repo;
  bool loading = true;
  List<BatafsilPageModel> viewModel = [];

  Future<void> load() async{
    viewModel = await _repo.fetchSpecialOffers();
    loading = false;
    notifyListeners();
  }
}