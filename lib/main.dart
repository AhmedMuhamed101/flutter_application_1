import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/core/route/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:team/view/screens/test.dart';
import 'package:team/view/screens/train_Data_Screens.dart';
import 'package:team/view/widget/navigation_bar_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home:   SinUp1Screen(),
      getPages: routes,
    );
  }
}


