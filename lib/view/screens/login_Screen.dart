import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/core/route/app_route.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen
  ({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> 
{
  final user_name = TextEditingController();
  final user_password = TextEditingController();
  bool pass = true;

  Future buttonSignIn() async{
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: user_name.text.trim(),
      password: user_password.text.trim());
      Get.toNamed(AppRoute.auth);
      
  }
  @override
  void dispose(){
    super.dispose();
  user_name.dispose();
  user_password.dispose();

  }
  @override
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
                                  Text("Welcome back,",
                                  style: TextStyle(fontSize: 20,color: Colors.white70),
                                  ),
                                  Text("Log In!",
                                  style: TextStyle(fontSize: 35,  fontWeight: FontWeight.bold, color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                              ),
                          ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 250 , bottom: 220),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        controller: user_name,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email_rounded),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            ),
                            labelText: "Write Your E-mail",
                            hoverColor: Colors.pink,
                            focusColor: Colors.red,
            
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(onPressed: () {
                          }, 
                          child: Text(
                            "Remember me",
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                            )),
                          
                          TextButton(onPressed: () {
            
                          }, 
                          child: Text("Forgot password",
                            style: TextStyle(
                              color: Colors.grey[600],
                            ),
                            )),
                        ],
                      ),
                      SizedBox(height: 30,),
                      Container(
                        width: 160,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff1ca7ec),
                        ),
                        child: TextButton(
                          onPressed: buttonSignIn,
                        child:Text(
                            'Log in ',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ), 
                        ),
                      ),      
                      SizedBox(height: 60),
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