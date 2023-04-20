import 'package:flutter/material.dart';
import 'package:team/core/constant/app_string.dart';
import 'package:team/core/constant/link_photo.dart';

class AppBarComponent extends StatelessWidget {
  const AppBarComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
          const Center(
            child: Text(AppString.nameProfile , 
            style: TextStyle(color: Colors.black ,
            fontSize: 20.0
            ),
            ),
          ),
          const SizedBox(width: 5.0),
            Container(
              height: 20.0,
              width: 60.0,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0),),
                color: Colors.white,
              ),
              child: const CircleAvatar(
                      radius:40 ,
                      backgroundImage:AssetImage(AppLinkImage.profileImage)  ,
                     ),
            ),
          ],
      elevation: 0.0,
      )
    ;
  }
}