


import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilio_giridharan/BLOC/lightTheme.dart';
import 'package:portfoilio_giridharan/LINKS/Link.dart';
import 'package:portfoilio_giridharan/MOBILE/PM.dart';
import 'package:portfoilio_giridharan/main.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatefulWidget {
  
  About({super.key});


  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {

  
  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);
              final t = mediaQuery.padding.top;
              final b = mediaQuery.padding.bottom;
              final l = mediaQuery.padding.left;
              final r = mediaQuery.padding.right;
    final hi = MediaQuery.of( context ).size.height   ;
    final wi = MediaQuery.of( context ).size.width  ;


    return SafeArea(
      child: Scaffold(
        // backgroundColor: const Color.fromARGB(255, 110, 110, 110),
        body: Stack(
          children: [
        
            
        
            Container(
              height: hi,
              width: wi, color:  Color.fromARGB(255, 110, 110, 110),
              child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
        
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
                              'ABOUT',
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
                  height: hi / 1.9 ,
                  width: wi / 1.5,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 110, 110, 110),
                    border: Border.all(
                      width: 1 , 
                      color: const Color.fromARGB(255, 255, 255, 255),
                    )
                  ),  
                  child: Padding(
                    padding: EdgeInsets.all(wi / 30 ) ,
                    child: Center( 
                      child: SingleChildScrollView(
                        child: Wrap(
                          children: [
                            Text(
                              "Hello! I'm GIRI,\n\nA fresher who passionate to start a career as a Software Engineer "
                              "passionate about building innovative and efficient solutions. "
                              "I hold a Bachelor's degree in Electronics and Communication Engineering "
                              "and have honed my skills in Java, Spring Boot, Flutter, and Android development. " 
                              "My expertise includes web and mobile app development, problem-solving, and system"
                              " optimization.\n\nI have successfully built an e-commerce platform with a Java Spring"
                              " Boot backend and Flutter frontend, implementing functionality to store multiple "
                              "images for a single product. Additionally, I am developing a Flutter app and"
                              " enhancing my knowledge of Android development.",
                              style: TextStyle(
                                color: Colors.white ,
                                fontFamily: 'f1',
                                fontSize: min( hi , wi ) / 26
                              ),
                            
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ) ,
        
                ],
              ) ,
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
                        // Navigator.pop(context ) ;
        
                        // Navigator.pushAndRemoveUntil(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => MyApp() ),
                        //   (route) => false, // Removes all previous routes
                        // );
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => MyApp()),
                            (route) => false,
                          );
        
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


class Loader extends StatelessWidget {
  const Loader({super.key});

  @override
  Widget build(BuildContext context) {

    final hi = MediaQuery.of( context ).size.height;
    final wi = MediaQuery.of( context ).size.width;

    return Scaffold(
      backgroundColor: Colors.white ,
      body: Container(
        height: hi ,
        width: wi ,

      ),
    );
  }
}