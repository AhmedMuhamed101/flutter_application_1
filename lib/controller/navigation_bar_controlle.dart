import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:team/view/screens/home_screen.dart';
import 'package:team/view/screens/menu_screen.dart';
import 'package:team/view/screens/select_train_for_map_Screen.dart';

class NavigationBarControlle extends GetxController {
  int? selectIndex = 1;

  final items = <Widget>[
    const Icon(Icons.games_outlined, size: 35.0),
    const Icon(Icons.watch_later_outlined, size: 35.0),
    const Icon(Icons.alarm, size: 35.0)
  ];

  final screen = [
    SelectTrainForMapScreen(),
    HomeScreen(),
    MenuScreen(),
  ];

  ontap(index) {
    selectIndex = index;
    update();
  }
}