import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:team/controller/select_train_controller.dart';
import 'package:team/view/menu_screen.dart';
import 'package:team/view/select_train_for_map_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final items = const [
        Icon(Icons.games_outlined ,size: 35.0 ),
        Icon(Icons.watch_later_outlined ,size: 35.0,),
        Icon(Icons.alarm , size: 35.0,),
        ];
    var _page =0; 
    // final pages = [MenuScreen(), TrainLocation(),TrainLocation()];  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
    appBar: AppBar(
      leading:Builder(builder:(context) => IconButton(onPressed: (){
        Scaffold.of(context) .openDrawer();
      }, icon: 
      const Icon(
        Icons.menu,
        color: Colors.black,
        ))),
      backgroundColor: Colors.white,
      title: const Text(
        "Travel",
        style:TextStyle(color: Colors.black) ,
        ),
        actions: [
        const Center(
          child: Text("SaSa" , 
          style: TextStyle(color: Colors.black ,
          fontSize: 20.0
          ),
          ),
        ),
        const SizedBox(width: 5.0),
          Container(
            height: 20.0,
            width: 60.0,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(50.0),),
              color: Colors.white,
            ),
            child:const CircleAvatar(
                    radius:40 ,
                    backgroundImage:AssetImage("images/face.jpg")  ,
                   ),
          ),
        ],
    elevation: 0.0,
    ),
    drawer: const MenuScreen(),
    body: 
    Container(
      color: Colors.white,
   //   child: getselectindex(index: index),

      child: Center(
      child: Stack(
        children: 
          [
              Positioned(
            top:100.0 ,
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
            children: [
              Row(
                children: [
          /// Bottom of QUESTION
            Padding(
              padding: const EdgeInsets.only(left:15.0 , top: 50.0 ),
              child: InkWell(
                onTap:(){
             
                }, 
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
                        child: const CircleAvatar(
                        radius:40 ,
                        backgroundImage:AssetImage("images/question.jpg")  ,
                    ),
                    ),
                  const SizedBox(height: 5,),
                          const Text(
                      "Question",
                      style: TextStyle(
                        fontSize:25 ,
                        color: Colors.white,
                      ),                      
                      ),
                  ],
                ),
              ),
            ),
              const SizedBox(width: 100.0,),
          //  Bottom of RESERVATION
            Padding(
              padding: const EdgeInsets.only(top:50.0 ),
              child: InkWell(
                onTap:() {}, 
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
                                offset: Offset(17, 17),
                            ),
                        ],
                    ),
                    child: const CircleAvatar(
                        radius:40 ,
                        backgroundImage:AssetImage("images/ticket.jpg")  ,
                       ),
                            ),
                 const SizedBox(height: 5,),
                          const Text(
                      "Reservation",
                      style: TextStyle(
                        fontSize:25 ,
                        color: Colors.white,
                       ),
                      
                      ),
                       
                  ],
                ),
              ),
            ),   
                ],
              ),
              Row(
                children: [
          //  Bottom of FREE TICKET
            Padding(
              padding: const EdgeInsets.only(left:15.0 , top: 20.0 ),
              child: InkWell(
                onTap:() {}, 
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
                                offset: Offset(17, 17),
                            ),
                        ],
                    ),
                    child: const CircleAvatar(
                        radius:40 ,
                        backgroundImage:AssetImage("images/free.jpg")  ,
                       ),
                            ),
                 const SizedBox(height: 5,),
                          const Text(
                      "Free Ticket",
                      style: TextStyle(
                        fontSize:25 ,
                        color: Colors.white,
                       ),
                      
                      ),
                       
                  ],
                ),
              ),
            ),
           const SizedBox(width: 100.0,),
            // Bottom of Return TICKET
            Padding(
              padding: const EdgeInsets.only(top:20.0 ),
              child: InkWell(
                onTap:() {}, 
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
                                offset: Offset(17, 17),
                            ),
                        ],
                    ),

                    child:  const CircleAvatar(
                        radius:40 ,
                        backgroundImage:AssetImage("images/return.jpg")  ,
                        ),
                            ),
                  const SizedBox(height: 5,),
                          const Text(
                      "Return",
                      style: TextStyle(
                        fontSize:25 ,
                        color: Colors.white,
                       ),
                      
                      ),
                       
                  ],
                ),
              ),
            ),   
                ],
              ),
            // Bottom of Train Place
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                 Center(
                   child: InkWell(
                    onTap:() {
                      Get.to(SelectTrainForMapScreen());
                 }, 
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
                                offset: Offset(17, 17),
                            ),
                        ],
                         ),
                         child:  const CircleAvatar(
                    radius:40 ,
                    backgroundImage:AssetImage("images/train place.jpg")  ,
                   ),
                                  ),
                          const SizedBox(height: 5,),
                          const Text(
                      "Train Place",
                      style: TextStyle(
                        fontSize:25 ,
                        color: Colors.white,
                       ),
                      
                      ),
                       ],
                     ),
                   ),
                 ),   
            ],
          ),
              ),
            ],
          ),
          ),
            ),
              Positioned(
            top:50.0,
            left:130.0 ,
            child:Container(
            height:100.0,
            width: 100.0,
            decoration: const BoxDecoration(
              borderRadius:BorderRadius.all(Radius.circular(50.0)) ,
              color: Colors.white,
              
            ),
            child: const CircleAvatar(
                    radius:40 ,
                    backgroundColor: Colors.white,
                    backgroundImage:AssetImage("images/location.png")  ,
                   ),
          ),
            ),
            
          ],
      ),
          ),
    ),
    bottomNavigationBar:
      CurvedNavigationBar(
        items: items,
        index: 0,
        onTap: (index){
                setState(() {
                  _page = index;
                });
        },
        backgroundColor: const Color.fromARGB(255, 124, 187, 238),
        animationDuration: const Duration(milliseconds: 300),
        
      ),
   
    );    
  }
//   Widget getselectindex ({required int index})
//   {
//     Widget widget;
//     switch (index) {
//       case 0:
//         widget = const TrainLocation();
//         break;
//         case 1:
//         widget = const TrainLocation();
//         break;
//       default:
//         widget = const TrainLocation();
//         break;
//     }
//     return widget;

//   }
}
//pages[_page],