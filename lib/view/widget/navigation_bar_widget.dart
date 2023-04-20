import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/controller/navigation_bar_controlle.dart';
import 'package:team/view/screens/menu_screen.dart';
import 'package:team/view/screens/select_train_for_map_Screen.dart';
import 'package:team/view/screens/train_location_screen.dart';

class NavigationBarWidget extends StatelessWidget{
   NavigationBarWidget({super.key});
// NavigationBarControlle controller = Get.put(NavigationBarControlle());
  
  int _page = 1;
  // GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final items =<Widget> [
        const Icon(Icons.games_outlined ,size: 35.0 ),
        const Icon(Icons.watch_later_outlined ,size: 35.0,),
        const Icon(Icons.alarm , size: 35.0,),
        ];
        // getselectindex(index = _page)
  @override
  Widget build(BuildContext context) {
    
    return GetBuilder<NavigationBarControlle>(
      init: NavigationBarControlle(),
      builder:(controller) => CurvedNavigationBar(
        //  key: _bottomNavigationKey,
          items: items,
          index: _page,
          onTap: (index) {
           _page =  controller.ontap(index);

          //  getselectindex(index: _page);

          },
          backgroundColor: const Color.fromARGB(255, 124, 187, 238),
          animationDuration: const Duration(milliseconds: 300)),
    );

  }
  
  
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