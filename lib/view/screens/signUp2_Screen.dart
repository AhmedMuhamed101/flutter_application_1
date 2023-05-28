import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:team/core/route/app_route.dart';
import 'package:team/view/screens/auth.dart';

class SignUp2Screen extends StatefulWidget {
  const SignUp2Screen({super.key});

  @override
  State<SignUp2Screen> createState() => _SignUp2ScreenState();
}

class _SignUp2ScreenState extends State<SignUp2Screen> {
  @override
  var user_name = TextEditingController();
  var user_gmail = TextEditingController();
  var user_password = TextEditingController();
  bool is_checked  = false;  
  bool pass = true;
   Future buttonSignUp() async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: user_gmail.text.trim(),
      password: user_password.text.trim());
      Get.toNamed(AppRoute.auth);
  }
  
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(
       color: Colors.white,
        child: SingleChildScrollView(
          child: Stack(
            children: 
              [
                  Positioned(
                            left: 100,
                            top: -30,
                                  child: Align(
                                      alignment: Alignment.topRight,
                                      child: Container(
                                          width: 400,
                                          height: 242,
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Color(0xff4adede),
                                          ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(right: 70),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        // crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Text("Hello",
                                          style: TextStyle(fontSize: 20,color: Colors.white70),
                                          ),
                                          Text("Sign Up!",
                                          style: TextStyle(fontSize: 35,  fontWeight: FontWeight.bold, color: Colors.white),
                                          ),
                                        ],
                                      ),
                                    ),
                                      ),
                                  )),
                  Padding(
                    padding: const EdgeInsets.only(top: 250 , bottom: 220),
                    child: Column(
                            children: [
                            TextFormField(
                              controller: user_name,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  ),
                                  labelText: "Write Your Name",
                            
                              ),
                            ),
                            SizedBox(height: 20),
                           
                            TextFormField(
                              controller: user_gmail,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email_rounded),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  ),
                                  labelText: "Write Your E-mail",
                              ),
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: user_password,
                              obscureText: pass,
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: IconButton(
                                          icon: Icon(pass?Icons.visibility:Icons.visibility_off),
                                          onPressed: () {
                                            setState(() {
                                              pass=!pass;
                                            });
                                          },),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  ),
                                  labelText: 'Write Your Password',
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Checkbox(
                                  value: is_checked,
                                onChanged: (bool?value) {
                                  setState(() {
                                    is_checked = !is_checked ;
                                  });
                                }),
                                Text(
                                  "I accept the polict and the terms",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                  ),
                                  ),
                            
                              ],
                            ),
                            SizedBox(height: 30,),
                            Container(
                              width: 160,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.cyan,
                              ),
                              child: TextButton(
                                onPressed: buttonSignUp,
                              child:Text(
                                  'Sign up ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ), 
                              ),
                            ),      
                            ],
                        ),
                  ),
                  Positioned(
            bottom: -50,
            right: 170,
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
          ),
        ),

      ) ,

    );
  }
}