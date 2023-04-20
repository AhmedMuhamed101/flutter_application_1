import 'package:flutter/material.dart';
import 'package:team/core/constant/app_string.dart';

class ButtonAppComponent extends StatelessWidget {
  final  onpressed ; 
  const ButtonAppComponent({super.key, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return  Container(
          width:double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(23.0),
            boxShadow:const [
               BoxShadow(
                color: Color(0x3f000000),
                blurRadius: 5,
                offset: Offset(2,4),
               )]
          ),
          child: TextButton(
            onPressed: onpressed,
          
           child: const Text("${AppString.search}",
           style: TextStyle(fontSize: 28.0 , color: Color(0xff42b6f0),),
           ))
           );}
}

/// This class for Const Button in Home Screen
class ConstButtonAppComponent extends StatelessWidget {
 final String image;
 final String text;
 final Function()? ontap;
    const ConstButtonAppComponent({super.key, required this.text, required this.image, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return 
    InkWell(
      onTap: ontap,
      child: Column(
                    children: [
                      Container(
                      height:110.0,
                      width: 110.0,
                      decoration: const BoxDecoration(
                        borderRadius:BorderRadius.all(Radius.circular(25.0)) ,
                        color: Colors.white,
                        boxShadow: [
                              BoxShadow(
                                  color: Color(0x3f000000),
                                  blurRadius: 20,
                                  offset: Offset(17, 17  ),
                              ),
                          ],
                      ),
                          child: CircleAvatar(
                          radius:40 ,
                          backgroundImage:AssetImage(image), 
                      ),
                      ),
                    const SizedBox(height: 5,),
                     Text(
                        text,
                        style: const TextStyle(
                          fontSize:25 ,
                          color: Colors.white,
                        ),                      
                        ),
                    ],
                  ),
    );
  }
 
}