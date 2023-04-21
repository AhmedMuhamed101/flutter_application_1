import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/controller/navigation_bar_controlle.dart';
import 'package:team/core/constant/app_string.dart';
import 'package:team/core/constant/link_photo.dart';
import 'package:team/view/widget/curve_nav_bar_widget.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavigationBarControlle>(
      init: NavigationBarControlle(),
      builder: (controller) => Scaffold(
        extendBody: true,
        body: controller.screen[controller.selectIndex!],
        bottomNavigationBar: CurvedNavBarWidget(),
      ),
    );
  }
}
