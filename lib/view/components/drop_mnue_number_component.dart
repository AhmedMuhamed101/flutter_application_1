import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:team/controller/select_train_controller.dart';
import 'package:team/view/widget/drop_mnue_number.dart';

class DropMnueNumberComponent extends StatelessWidget {
   const DropMnueNumberComponent({super.key});

  @override
  Widget build(BuildContext context) {
     return GetBuilder<SelectTrainController>(
                init: SelectTrainController(),
                builder: (controller) => Center(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: const Color(0x6b000000),  width: 1.2),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow:const [
               BoxShadow(
                color: Color(0x3f000000),
                blurRadius: 5,
                offset: Offset(2,4),
               )]
                ),
                child: DropMnueNumberWidget()
              ) ,
            ),
          
    );
  }
}