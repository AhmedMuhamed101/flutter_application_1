import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class NavigationBarControlle extends GetxController{
  int? selectIndex;


   ontap (index){
    selectIndex= index;
    update();
  }
}