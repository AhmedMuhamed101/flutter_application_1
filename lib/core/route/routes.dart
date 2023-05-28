import 'package:flutter/cupertino.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:team/core/route/app_route.dart';
import 'package:team/view/screens/auth.dart';
import 'package:team/view/screens/login_Screen.dart';
import 'package:team/view/screens/menu_screen.dart';
import 'package:team/view/screens/profile.dart';
import 'package:team/view/screens/signUp2_Screen.dart';
import 'package:team/view/screens/train_location_screen.dart';
import 'package:team/view/widget/navigation_bar_widget.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
    name: AppRoute.start,
    page: () => const HomePageScreen()),
  GetPage(name:AppRoute.trainLocationScreen, page: () => const TrainLocation()),
  GetPage(name:AppRoute.mnueScreen, page: () => const MenuScreen()),
  GetPage(name:AppRoute.profileScreen, page: () => const ProfileScreen()),
  GetPage(name:AppRoute.auth, page: () => const auth()),
  GetPage(name:AppRoute.login, page: () => const LoginScreen()),
  GetPage(name:AppRoute.signUp, page: () => const SignUp2Screen()),

];