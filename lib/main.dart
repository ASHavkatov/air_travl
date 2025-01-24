import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:treval_app/BatafsilPage/data/repositories/batafsil_page_repository.dart';
import 'package:treval_app/BatafsilPage/presentation/pages/batafsil_page_view_model.dart';
import 'package:treval_app/air_travel/presentation/pages/detail_page.dart';
import 'package:treval_app/air_travel/presentation/pages/sevimlilar_main_page.dart';
import 'package:treval_app/core/client.dart';
import 'package:treval_app/homepage/presentation/pages/travel_main_page.dart';

import 'BatafsilPage/presentation/pages/batafsil_page_view.dart';

// GoRouter router = GoRouter(routes: [
//   GoRoute(
//     path: "/air_travel",
//     builder: (context, state) => SevimlilarMainPage(),
//   ),
//   GoRoute(
//     path: "/",
//     builder: (context, state) => TravelMainPage(),
//   ),
//   GoRoute(
//       path: "/batafsil",
//       builder: (context, state) {
//         final batafsilPageRepository = context.read<BatafsilPageRepository>();
//         return BatafsilMainPage(
//           viewModel: BatafsilPageViewModel(
//             repo: batafsilPageRepository,
//           ),
//         );
//       })
// ]);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailPage(),
    );
  }
}
//   return MultiProvider(
//     providers: [
//       Provider(create: (context) => ApiClient()),
//       Provider(
//         create: (context) => BatafsilPageRepository(client: context.read()),
//       ),
//     ],
//     child: MaterialApp.router(
//       debugShowCheckedModeBanner: false,
//       routerConfig: router,
//     ),
//   );
// }
// }
