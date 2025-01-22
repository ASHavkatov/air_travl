import 'package:flutter/material.dart';
import 'package:treval_app/BatafsilPage/presentation/pages/batafsil_page_view_model.dart';
import 'package:treval_app/BatafsilPage/presentation/widgets/batafsil_page_main_image.dart';
import 'package:treval_app/core/presentations/widgets/batafsil_app_bar.dart';

class BatafsilMainPage extends StatelessWidget {
  const BatafsilMainPage({
    super.key,
    required this.viewModel,
  });

  final BatafsilPageViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return ListenableBuilder(
        listenable: viewModel,
        builder: (context, widget) => switch (viewModel.loading) {
              true => Center(
                  child: CircularProgressIndicator(),
                ),
              false => Scaffold(
                appBar:BatafsilAppBar(svg: "assets/icons/blackarrow.svg"),
                  body: ListView(children: [
                    BatafsilPageMainImage(
                      images: viewModel.viewModel
                          .map((data) => data.image)
                          .toList(),
                    ),
                  ]),
                ),
            });
  }
}
