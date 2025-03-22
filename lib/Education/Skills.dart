

import 'dart:math';

import 'package:flutter/material.dart';

class Skills extends StatefulWidget {

  double l , r ,  t , b ;
  dynamic skill ;
  Skills({super.key , required this.skill , required this.l , required this .r  , required this.t , required this .b });

  // const Skills({super.key});

  @override
  State<Skills> createState() => _SkillsState();
}

class _SkillsState extends State<Skills> {
   @override
  Widget build(BuildContext context) {
    
    final hi = MediaQuery.of( context ).size.height;
    final wi = MediaQuery.of( context ).size.width;
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 110, 110, 110),
        body: Stack(
          children: [
            
        
            Padding(
              padding:  EdgeInsets.only( top :  hi / 10  ),
              child: SingleChildScrollView(
                child: Column (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SizedBox( height: hi / 10 ,) ,
                          
                    Align(
                      alignment: Alignment( 0.5, -0.7 ),
                      child: Container(
                      height: hi / 8 ,
                      width: wi / 1.9,
                        color: const Color.fromARGB(0, 255, 193, 7) ,
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                'SKILLS',
                                style: TextStyle(
                                  fontFamily: 'f1',
                                  color: const Color.fromARGB(110, 255, 255, 255)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ) ,
                          
                    
                    Container(
                    height: hi / 2 ,
                    width: wi / 1.4,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 110, 110, 110),
                      border: Border.all(
                        width: 1 , 
                        color: const Color.fromARGB(255, 255, 255, 255),
                      )
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(wi / 10 ) ,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                      
                          Row(children: [
                            Container(
                              height: wi / 7 ,
                              width: wi / 7 ,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/image/fe.png") ,fit: BoxFit.contain 
                                )
                              ),
                      
                      
                            ) ,
                      
                            Wrap(
                              children: [
                                Text(
                                  "FRONTEND \nTECHONOLOGIES" ,
                                  style: TextStyle(
                                    color: Colors.white ,
                                    fontFamily: 'f1',
                                    fontSize: min( hi , wi ) / 26
                                  ),
                                )
                              ],
                            )
                          ],),
                          Wrap(
                            children: [
                              Text(
                                "UI developement is like Transforming ideas into interactive and intuitive user experiences\n\n"
                                
                                "SKILLS..,\n"
                                "Dart , "
                                "Flutter\n"
                                "Flutter Bloc\n"
                                "Android , Ios , Web\n"
                                "Flutter Bloc\n"
                                "Cross Platform Development\n\n" 
                          
                                "TOOLS..,\n" 
                                "Android Studios\n"
                                "VS code , "
                                "Github\n",
                                // " optimization.\n\nI have successfully built an e-commerce platform with a Java Spring"
                                // " Boot backend and Flutter frontend, implementing functionality to store multiple "
                                // "images for a single product. Additionally, I am developing a Flutter app and"
                                // " enhancing my knowledge of Android development." 
                                // ,
                                style: TextStyle(
                                  color: Colors.white ,
                                  fontFamily: 'f1',
                                  fontSize: min( hi , wi ) / 26
                                ),
                              
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ) ,
                          
                    SizedBox( height: hi / 15 ,) ,
                  Container(
                    height: hi / 2 ,
                    width: wi / 1.4,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 110, 110, 110),
                      border: Border.all(
                        width: 1 , 
                        color: const Color.fromARGB(255, 255, 255, 255),
                      )
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(wi / 10 ) ,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                      
                          Row(children: [
                            Container(
                              height: wi / 7 ,
                              width: wi / 7 ,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/image/b3.png") ,fit: BoxFit.contain 
                                )
                              ),
                      
                      
                            ) ,
                      
                            Wrap(
                              children: [
                                Text(
                                  " BACKEND \n TECHONOLOGIES" ,
                                  style: TextStyle(
                                    color: Colors.white ,
                                    fontFamily: 'f1',
                                    fontSize: min( hi , wi ) / 26
                                  ),
                                )
                              ],
                            )
                          ],),
                          Wrap(
                            children: [
                              Text(
                                "Backend development is like Connecting data, systems, and users with efficiency and security\n\n"
                                
                                "SKILLS..,\n"
                                "Java , MySQL, "
                                "SpringBoot\n"
                                "Java Server Pages [ JSP ]\n"
                                "Servlet\n"
                                "Java Database Connectivity [ JDBC ]\n"
                                "Oops , RestAPI , Dsa , Mvc\n\n" 
                          
                                "TOOLS..,\n" 
                                "Intelliji\n"
                                "Postman , "
                                "Eclipse\n",
                                // " optimization.\n\nI have successfully built an e-commerce platform with a Java Spring"
                                // " Boot backend and Flutter frontend, implementing functionality to store multiple "
                                // "images for a single product. Additionally, I am developing a Flutter app and"
                                // " enhancing my knowledge of Android development." 
                                // ,
                                style: TextStyle(
                                  color: Colors.white ,
                                  fontFamily: 'f1',
                                  fontSize: min( hi , wi ) / 26
                                ),
                              
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ) ,
                          
                    SizedBox( height: hi / 10 ,) ,
                          
                          
                  //   Align(
                  //   alignment: Alignment( -0.4, 0.8 ),
                  //   child: Container(
                  //     height: hi / 15 ,
                  //     width: wi / 3 ,
                  //     color: const Color.fromARGB(0, 255, 193, 7) ,
                  //     child: FittedBox(
                  //       child: Row(
                  //         children: [
                  //           Text(
                  //             'SWIPE . . . ',
                  //             style: TextStyle(
                  //               fontFamily: 'f1',
                  //               color: const Color.fromARGB(0, 255, 255, 255)
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ),
                  // ),
                          
                          
                  ],
                ),
              ),
            ) ,
        
        
            Align(
                alignment: Alignment( 0 , - 0.9 ),
                child: Container(
                  height: wi / 13 ,
                  width: wi / 13 ,
                  decoration: BoxDecoration(
                    border: Border.all( 
                      width: 1 ,
                      color: Colors.white 
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(100 ) ) ,
                    color: const Color.fromARGB(0, 255, 0, 0) 
                  ),
                  child: FittedBox(
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context ) ;
                      }, 
                      
                      icon: Icon( Icons.arrow_back )
                      ),
                  ),
                ),
              ) , 
        
          ],
        ),
      ),
    );
  }
}