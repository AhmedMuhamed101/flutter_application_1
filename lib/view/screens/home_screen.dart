import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/controller/select_train_controller.dart';
import 'package:team/core/constant/app_string.dart';
import 'package:team/core/constant/link_photo.dart';
import 'package:team/core/route/app_route.dart';
import 'package:team/view/components/appbar_component.dart';
import 'package:team/view/components/button_app_component.dart';
import 'package:team/view/screens/menu_screen.dart';
import 'package:team/view/screens/select_train_for_map_Screen.dart';
import 'package:team/view/widget/navigation_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // final items = const [
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    appBar: AppBar(
        leading:Builder(builder:(context) =>
         IconButton(onPressed: (){
          Scaffold.of(context) .openDrawer();
        }, icon:const Icon(
          Icons.menu,
          color: Colors.black,
          ))),
        backgroundColor: Colors.white,
        title: const Text(
          AppString.nameApp,
          style:TextStyle(color: Colors.black) ,
          ),
          actions: [
            InkWell(
              onTap: () => Get.toNamed(AppRoute.profileScreen),
              child: Container(
                height: 20.0,
                width: 60.0,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50.0),),
                  color: Colors.white),
                child:const CircleAvatar(
                        radius:40 ,
                        backgroundImage:AssetImage(AppLinkImage.profileImage)))
            ),
          ],
      elevation: 0.0,
      ),
    drawer: const MenuScreen(),
    body: 
    Container(
      color: Colors.white,
      child: Center(
      child: Stack(
        children: 
          [
              Positioned(
            top:100.0 ,
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
                            ),
                        ],
            ),
          child: Column(
            children: [
              Row(
                children: [
          /// Bottom of QUESTION
            Padding(
              padding: const EdgeInsets.only(left:15.0 , top: 50.0 ),
              child: ConstButtonAppComponent(
                text: AppString.nameButtonQestion,
                 image: AppLinkImage.buttonQestionImage, 
                 ontap: () { print("Button Question"); },),
            ),
              const SizedBox(width: 100.0,),
          //  Bottom of RESERVATION
            Padding(
              padding: const EdgeInsets.only(top:50.0 ),
              child: ConstButtonAppComponent(
                text: AppString.nameButtonReservation, 
                image: AppLinkImage.buttonReservationImage,
                 ontap: (){print("Button Reservation");})
            ),],),
              Row(
                children: [
          //  Bottom of FREE TICKET
            Padding(
              padding: const EdgeInsets.only(left:15.0 , top: 20.0 ),
              child: ConstButtonAppComponent(
                text: AppString.nameButtonFreeTicket,
                image: AppLinkImage.buttonFreeTicketImage,
                ontap: (){print("Free ticket");})
            ),
           const SizedBox(width: 100.0,),
            // Bottom of Return TICKET
            Padding(
              padding: const EdgeInsets.only(top:20.0 ),
              child:ConstButtonAppComponent(
                text: AppString.nameButtonRetrun, 
                image: AppLinkImage.buttonReturnImage, 
                ontap: (){print("Return");})
 ),   
                ],
              ),
            // Bottom of Train Place
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 Center(
                   child: ConstButtonAppComponent(
                    text: AppString.nameButtonTrainPlace, 
                    image: AppLinkImage.buttonTrainPlaceImage, 
                    ontap: ()
                      {
                        Get.to(SelectTrainForMapScreen());
                      })
                 ),   
            ],
          ),
              ),
            ],
          ),),),
              Positioned(
            top:50.0,
            left:130.0 ,
            child:Container(
            height:100.0,
            width: 100.0,
            decoration: const BoxDecoration(
              borderRadius:BorderRadius.all(Radius.circular(50.0)) ,
              color: Colors.white,
              
            ),
            child: const CircleAvatar(
                    radius:40 ,
                    backgroundColor: Colors.white,
                    backgroundImage:AssetImage(AppLinkImage.buttonLocationImage)  ,
                   ),
          ),
            ),
            
          ],
          ), ),),
     
   
    );    
  }
}

//pages[_page],