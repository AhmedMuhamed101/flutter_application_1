
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/core/constant/link_photo.dart';
import 'package:team/core/route/app_route.dart';

class SinUp1Screen extends StatelessWidget {
  const SinUp1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Container(
      decoration: BoxDecoration(
          color: Colors.white,),
      child: Stack(
        children: [
          Positioned.fill(
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        width: 442,
                        height: 664,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: Border.all(color: Color(0xff42b6f0), width: 1.2, ),
                            color: Colors.white,
                        ),
                        padding: const EdgeInsets.only(left: 33, right: 51, top: 73, bottom: 161, ),
                               
        child: Column(
          // mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Center(
             child: Text(
              "TRAVEL",
                style: TextStyle(
                    color: Color(0xff8496f7),
                    fontSize: 24,
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600,
                ),
              ),
           ),
          SizedBox(height: 40.57),
                               
           Center(
             child: Text(
              "Sign Up",
              style: TextStyle(
              fontWeight: FontWeight.bold,
                fontSize: 40),
              ),
           ),
           Center(
             child: Text(
              "Sign Up now",
              style: TextStyle(
                color: Color(0x56000000),
                fontSize: 20),
              ),
           ),
           SizedBox(height: 50.0),

           Container(
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xff1ca7ec),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                          Text(
                              "f",
                              style: TextStyle(
                                fontWeight:FontWeight.bold ,
                                color:Colors.white,
                                fontSize: 40),
                              ),
                          TextButton(onPressed: (){}, child:Text(
                                  "Continue With Facebook",
                                  style: TextStyle(
                                    color:Colors.white,
                                    fontSize: 20),
                                  ),)
                      ])),
           SizedBox(height: 17.57),
           Center(
             child: Container(
                        width: 230,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            border: Border.all(color: Color(0x63000000), width: 1, ),
                            color: Colors.white,
                        ),
                        child:Center(
                          child: TextButton(onPressed: (){
                            Get.toNamed(AppRoute.signUp);
                          }, child: Text(
                                  "I`ll use email or phone",
                                  style: TextStyle(
                                    color: Colors.black45,
                                    fontSize: 20),
                                  ),)
                        ),
        
      ),
           ),
           SizedBox(height: 50.0),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have account?"),
              TextButton(onPressed: (){
                Get.toNamed(AppRoute.login);
              }, child:Text("Login"))
            ],
           ),
         ],
        ),
      ),
    ) ,  
          ),
          Positioned(
                left: 120,
                top: 78,
                child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                          BoxShadow(
                              color: Color(0x3f000000),
                              blurRadius: 0,
                              // offset: Offset(5, 0),
                          ),
                      ],
                  ),
                  child:Image.asset(AppLinkImage.buttonLocationImage)
              ),
            ),
          Positioned(
          left: 190,
          top: -70,
                child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        width: 316,
                        height: 242,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff4adede),
                        ),
                    ),
                ),
            ),
          Positioned(
          bottom: -60,
          right: 200,
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        width: 316,
                        height: 242,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xff4adede),
                        ),
                    ),
                ),
            ),
       
        ],
          )
    )
    );
  }
}