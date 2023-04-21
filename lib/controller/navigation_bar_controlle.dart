import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:team/view/screens/menu_screen.dart';
import 'package:team/view/screens/train_location_screen.dart';

class NavigationBarControlle extends GetxController{
  int? selectIndex = 1;


   ontap (index){
    selectIndex= index;
    update();
  }
  
  Widget getselectindex ({required int index})
  {
    Widget widget;
    switch (index) {
      case 0:
        widget = const TrainLocation();
        break;
        case 1:
        widget = const MenuScreen();
        break;
      default:
        widget = const TrainLocation();
        break;
      
    }
    return widget;
  }
}