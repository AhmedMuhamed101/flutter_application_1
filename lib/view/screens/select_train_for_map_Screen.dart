import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/core/constant/app_string.dart';
import 'package:team/core/route/app_route.dart';
import 'package:team/view/components/button_app_component.dart';
import 'package:team/view/components/drop_mnue_item_component.dart';
import 'package:team/view/components/drop_mnue_number_component.dart';
import 'package:team/view/screens/train_location_screen.dart';


class SelectTrainForMapScreen extends StatelessWidget {
 const SelectTrainForMapScreen({super.key});



// final SelectTrainController controller=SelectTrainController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body:Container(
      color: Colors.white,
         child: Center(
           child: Stack(
             children:[ 
                  Positioned(
                top:200.0 ,
                child:Container(
                height:610.0,
                width: 357.0,
                decoration: const BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(50.0)) ,
                  color: Color.fromARGB(255, 124, 187, 238),
                  boxShadow: [
                                BoxShadow(
                                    color: Color(0x3f000000),
                                    blurRadius: 20,
                                    offset: Offset(15, 15),
                             ),],),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
           const DropMnueItemComponent(),
           const DropMnueNumberComponent(),
            ButtonAppComponent(onpressed: (){
            Get.toNamed(AppRoute.trainLocationScreen);
           },),
           ],
                ),
                ),
      )
        
              // Obx(()=> )  
               ]

         )
      ),
       ),
    );
  }
}