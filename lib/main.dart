import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/view/home_screen.dart';
import 'package:team/view/select_train_for_map_Screen.dart';
import 'package:team/view/train_location_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
      // getPages: [
      // GetPage(name: "/TrainLocationScreen", page:() =>  TrainLocation()),
      // GetPage(name: "/SelectTrainForMapScreen", page:() =>  SelectTrainForMapScreen()),
      
      // ],
    );
  }
}


