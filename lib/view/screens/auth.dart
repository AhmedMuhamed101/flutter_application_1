import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:team/view/screens/home_screen.dart';
import 'package:team/view/screens/signUp2_Screen.dart';
import 'package:team/view/screens/ticket_Screen.dart';
import 'package:team/view/widget/navigation_bar_widget.dart';

class auth extends StatelessWidget {
  const auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream : FirebaseAuth.instance.authStateChanges(),
        builder:((context, snapshot) {
          if (snapshot.hasData) {
            return HomePageScreen();
          }
          else{
            return SignUp2Screen();
          }
        }),
        ),
    );
  }
}