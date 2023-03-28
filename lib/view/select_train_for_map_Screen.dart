import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:team/controller/select_train_controller.dart';
import 'package:team/view/train_location_screen.dart';

class SelectTrainForMapScreen extends StatefulWidget {
  const SelectTrainForMapScreen({super.key});


  @override
  State<SelectTrainForMapScreen> createState() => _SelectTrainForMapScreenState();
}

class _SelectTrainForMapScreenState extends State<SelectTrainForMapScreen> {


var selectTrainName;
var selectTrainNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: 
       Container(
      color: Colors.white,
      
         child: Center(
           child: Stack(
             children:[ 
              GetX<SelectTrainController>(
                init: SelectTrainController(),
                builder: (controller) =>     Positioned(
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
                                ),
                            ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0x6b000000),  width: 1.2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow:const [
               BoxShadow(
                color: Color(0x3f000000),
                blurRadius: 5,
                offset: Offset(2,4),
               )]
                ),
                child: DropdownButton(
                hint: const Text("Select Your Train Name"),
                items: controller.dropDownButtonItem
                .map((trainName) => DropdownMenuItem(child: Text(trainName),
                value: trainName,
                )).toList(),
                 onChanged:(value){
                  setState(() {
                    selectTrainName = value;
                  });
                 },
                 value: selectTrainName,
                borderRadius:BorderRadius.all(Radius.circular(10.0)),
                elevation: 0,
                style: TextStyle(
                  color: Colors.black,
                  backgroundColor: Colors.white,
                  fontSize: 20.0,
                  
                ),
                
                 ),
              ) ,
            ),
          // SizedBox(height: 20.0,),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Color(0x6b000000), width: 1.2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow:const [
               BoxShadow(
                color: Color(0x3f000000),
                blurRadius: 5,
                offset: Offset(2,4),
               )]
                ),
                child: DropdownButton(
                hint: const Text("Select Your Train Number"),
                items: controller.dropDownButtonNumber
                .map((train) => DropdownMenuItem(child: Text(train),
                value: train,
                )).toList(),
                 onChanged:(value){
                  setState(() {
                    selectTrainNumber = value;
                  });
                 },
                 value: selectTrainNumber,
                borderRadius:BorderRadius.all(Radius.circular(10.0)),
                elevation: 0,
                style: TextStyle(
                  color: Colors.black,
                  backgroundColor: Colors.white,
                  fontSize: 20.0,
                  
                ),
                
                 ),
              ) ,
            ),
            Container(
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
            onPressed: (){
             Get.to(TrainLocation());
                       },
          
           child: const Text('Search',
           style: TextStyle(fontSize: 28.0 , color: Color(0xff42b6f0),),
           ))
           )
           ],
                ),
                )),
        )
          
         ]  )
      ),
       ),
    );
  }
}