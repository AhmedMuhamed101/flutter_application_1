import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:team/controller/navigation_bar_controlle.dart';

class CurvedNavBarWidget extends GetView<NavigationBarControlle> {
  const CurvedNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        items: controller.items,
        index: controller.selectIndex!,
        onTap: (index) {
          controller.ontap(index);
        },
        
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300));
  }
}