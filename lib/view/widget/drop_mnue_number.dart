import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/controller/select_train_controller.dart';

class DropMnueNumberWidget extends GetView<SelectTrainController> {
  const DropMnueNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25.0),
      child: Container(
        height: 60,
        decoration: const BoxDecoration(
            //color: AppColor.nearlyWhite,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: Row(
          children: [
            Container(
                width: 4,
                height: 60,
                decoration:  const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10)))),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: DropdownButton(
                  borderRadius: BorderRadius.circular(3),
                  isExpanded: true,
                  hint: const Text(
                    "Select your train number",
                    style: TextStyle(
                      fontFamily: "Poppins",
                    ),
                  ),
                  
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: controller.dropDownButtonNumber.map((list) {
                    return DropdownMenuItem(
                      value: list,
                      child: Text(
                        list,
                        style: const TextStyle(
                          fontFamily: "Poppins",
                        ),
                      ),
                    );
                  }).toList(),
                  onChanged: (values) {
                    controller.onchangeNumber(values!);
                   
                  },
                  value: controller.selectTrainNumber,
                ),
              ),
            ),
          ], 
        ),
      ),
    );
  }
}