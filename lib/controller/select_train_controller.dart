// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:get/get.dart';

class SelectTrainController extends GetxController{

String? selectTrainName;
String? selectTrainNumber;

List<String> dropDownButtonItem = ["Russ","VIP" , "Asban", "Sleep"];
List<String> dropDownButtonNumber =["1080","604" , "520", "106"];

onchangeNumber (value){
selectTrainNumber = value;
update  ();
}
onchangeName(value){
selectTrainName = value;
update();
}
}