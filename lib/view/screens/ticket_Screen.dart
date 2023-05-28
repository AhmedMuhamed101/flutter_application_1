import 'package:flutter/material.dart';
//STOP
class pro_tickets_shop extends StatefulWidget {
  const pro_tickets_shop({super.key});

  @override
  State<pro_tickets_shop> createState() => _pro_tickets_shopState();
}

class _pro_tickets_shopState extends State<pro_tickets_shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.cyan,
          ),
          actions: [
           Icon(
            Icons.search,
            color: Colors.cyan,),
            SizedBox(width: 10,),
          ],
      ),
      body: Column(
        children: [

          //vv The Main
            SingleChildScrollView(  
        scrollDirection: Axis.horizontal,
        child: Container(
          height: 150,         
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Row( 
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(width: 25,),         
              Text(
                'Tickets Shop',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 50,
                ), 
              ), 
              SizedBox(width: 30,),
              Container(
                width: 20,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors. white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    bottomLeft: Radius.circular(100),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

              //^^ The Main
          SizedBox(height: 30,),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  
                    //vv The tickets
                  SizedBox(height: 20,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.cyan,
                      borderRadius: BorderRadius.circular(25),
                    ),
          
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8.0,
                        ),//here stop
                      child: Column(
                        
                        children: [ 
                                  
                          SizedBox(height: 40,),
                          SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(
                                    '5:10 Pm',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black
                                    ),
                                  ),
                                  Text(
                                    'Luxor',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black
                                    ),
                                  ),                  
                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(
                                    "1:45",
                                    style: TextStyle(
                                      color: Colors.black,
                          
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Colors.black,
                                  ),
                          
                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(
                                    '7:00 Pm',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black
                                    ),
                                  ),
                                  Text(
                                    'Farshout',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                  ),
                                  
                                ],
                              ),
                              SizedBox(width: 15,),
                              Text(
                                '1 Oct 2001',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                          
                            ],
                          
                          ),
                      
                          //^^ The first row ^^
                          //vv The second row vv
                          SizedBox(height: 10,),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(width: 15,),
                              Text(
                                '974\nRussian',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  
                                ),
                              ),
                              SizedBox(width:300 ,),
                              Container(
                              width: 20,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100),
                                ),
                              ),
                              ),
                            ],
                          
                          ),
                          //^^ The second row ^^
                          SizedBox(height: 12,),
                          //vv The third row vv
                          
                          Row(
                            
                            children: [
                              Icon(
                                Icons.location_on_outlined,
                                color: Colors.black,
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Luxor to Farshout',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 75,),
                              Text(
                                '25 EGP',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                                ),
                          ),
                          SizedBox(height: 20,),
                          SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(
                                    '5:10 Pm',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black
                                    ),
                                  ),
                                  Text(
                                    'Luxor',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black
                                    ),
                                  ),
                          
                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(
                                    "1:45",
                                    style: TextStyle(
                                      color: Colors.black,
                          
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Colors.black,
                                  ),
                          
                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(
                                    '7:00 Pm',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black
                                    ),
                                  ),
                                  Text(
                                    'Farshout',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                  ),
                                  
                                ],
                              ),
                              SizedBox(width: 15,),
                              Text(
                                '1 Oct 2001',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                          
                            ],
                          
                          ),
                      
                          //^^ The first row ^^
                          //vv The second row vv
                          SizedBox(height: 10,),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(width: 15,),
                              Text(
                                '974\nRussian',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  
                                ),
                              ),
                              SizedBox(width:300 ,),
                              Container(
                              width: 20,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100),
                                ),
                              ),
                              ),
                            ],
                          
                          ),
                          //^^ The second row ^^
                          SizedBox(height: 12,),
                          //vv The third row vv
                          
                          Row(
                            
                            children: [
                              Icon(
                                Icons.location_history_rounded,
                                color: Colors.black,
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Luxor to Farshout',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 75,),
                              Text(
                                '25 EGP',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                                ),
                          ),
                          SizedBox(height:20 ,),
                          SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(
                                    '5:10 Pm',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black
                                    ),
                                  ),
                                  Text(
                                    'Luxor',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black
                                    ),
                                  ),
                          
                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(
                                    "1:45",
                                    style: TextStyle(
                                      color: Colors.black,
                          
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Colors.black,
                                  ),
                          
                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(
                                    '7:00 Pm',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black
                                    ),
                                  ),
                                  Text(
                                    'Farshout',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                  ),
                                  
                                ],
                              ),
                              SizedBox(width: 15,),
                              Text(
                                '1 Oct 2001',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                          
                            ],
                          
                          ),
                      
                          //^^ The first row ^^
                          //vv The second row vv
                          SizedBox(height: 10,),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(width: 15,),
                              Text(
                                '974\nRussian',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  
                                ),
                              ),
                              SizedBox(width:300 ,),
                              Container(
                              width: 20,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100),
                                ),
                              ),
                              ),
                            ],
                          
                          ),
                          //^^ The second row ^^
                          SizedBox(height: 12,),
                          //vv The third row vv
                          
                          Row(
                            
                            children: [
                              Icon(
                                Icons.location_history_rounded,
                                color: Colors.black,
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Luxor to Farshout',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 75,),
                              Text(
                                '25 EGP',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                                ),
                          ),
                          SizedBox(height: 20,),
                          SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(
                                    '5:10 Pm',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black
                                    ),
                                  ),
                                  Text(
                                    'Luxor',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black
                                    ),
                                  ),
                          
                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(
                                    "1:45",
                                    style: TextStyle(
                                      color: Colors.black,
                          
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_right_alt,
                                    color: Colors.black,
                                  ),
                          
                                ],
                              ),
                              SizedBox(width: 10,),
                              Column(
                                children: [
                                  Text(
                                    '7:00 Pm',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black
                                    ),
                                  ),
                                  Text(
                                    'Farshout',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25,
                                      color: Colors.black,
                                    ),
                                  ),
                                  
                                ],
                              ),
                              SizedBox(width: 15,),
                              Text(
                                '1 Oct 2001',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                          
                            ],
                          
                          ),
                      
                          //^^ The first row ^^
                          //vv The second row vv
                          SizedBox(height: 10,),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              SizedBox(width: 15,),
                              Text(
                                '974\nRussian',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  
                                ),
                              ),
                              SizedBox(width:300 ,),
                              Container(
                              width: 20,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(100),
                                  bottomLeft: Radius.circular(100),
                                ),
                              ),
                              ),
                            ],
                          
                          ),
                          //^^ The second row ^^
                          SizedBox(height: 12,),
                          //vv The third row vv
                          
                          Row(
                            
                            children: [
                              Icon(
                                Icons.location_history_rounded,
                                color: Colors.black,
                              ),
                              SizedBox(width: 10,),
                              Text(
                                'Luxor to Farshout',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(width: 75,),
                              Text(
                                '25 EGP',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                                ),
                          ),
                          SizedBox(height: 20,),
                        ],
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
          SizedBox(height: 5,),
        ],
      ),);
  }
}