import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:team/core/route/route.dart';
import 'package:team/view/widget/navigation_bar_widget.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: AppRoute.start,
    page: () => const HomePageScreen(),
  ),
];
