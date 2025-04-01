

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilio_giridharan/BLOC/AboutIcon.dart';
import 'package:portfoilio_giridharan/Education/About.dart';
import 'package:portfoilio_giridharan/LINKS/Link.dart';
import 'package:url_launcher/url_launcher.dart';

class SkillsLM extends StatefulWidget {

  double l , r ,  t , b ;
  dynamic skill ;
  SkillsLM({super.key , required this.skill , required this.l , required this .r  , required this.t , required this .b });

  // const Skills({super.key});

  @override
  State<SkillsLM> createState() => _SkillsLMState();
}

class _SkillsLMState extends State<SkillsLM> {
   @override
  Widget build(BuildContext context) {
    
    final hi = MediaQuery.of( context ).size.width;
    final wi = MediaQuery.of( context ).size.height;
    
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        body: Stack(
          children: [

           
            Padding(
              padding: const EdgeInsets.all(1.0),
              child: BubbleScreen(),
            ) ,

                      Stack(
                        children: [
                          Align(
                            alignment: Alignment( 0.5, -0.7 ),
                            child: Container(
                            height: hi / 8 ,
                            width: wi / 1.9,
                              color: const Color.fromARGB(0, 255, 193, 7) ,
                              child: FittedBox(
                                child: Text(
                                  'SKILLS',
                                  style: TextStyle(
                                    fontFamily: 'f1',
                                    color: const Color.fromARGB(110, 255, 255, 255)
                                  ),
                                ),
                              ),
                            ),
                          ),
                           FutureBuilder(
                            future: Future.delayed(const Duration(milliseconds: 100)),
                            builder: (context, snapshot) {
                              if (snapshot.connectionState == ConnectionState.done) {
                                return iconALM(h: hi, w: wi);
                              }
                              return const SizedBox(); // Placeholder before icon loads
                            },
                          ),
                        ],
                      ),
                  Padding(
                    padding:  EdgeInsets.only( top :  hi / 10  ),
                    child: Center(
                      child: SingleChildScrollView(
                        child: Column (
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SizedBox( height: hi / 10 ,) ,
                               
                               
                          
                            SizedBox( height: hi / 6 ,) ,
                            
                                  
                            
                            Container(
                            height: hi / 1.9 ,
                            width: wi / 1.5,
                            decoration: BoxDecoration(
                                // color: const Color.fromARGB(255, 255, 46, 46),
                                color: const Color.fromARGB(255, 110, 110, 110),
                              border: Border.all(
                                width: 1 , 
                                color: const Color.fromARGB(255, 255, 255, 255),
                              )
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(wi / 10 ) ,
                              child: SingleChildScrollView(
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
                                          
                                          "SKILLS . . ,\n"
                                          "Dart , "
                                          "Flutter\n"
                                          "Flutter Bloc\n"
                                          "Android , Ios , Web\n"
                                          "Flutter Bloc\n"
                                          "Cross Platform Development\n\n" 
                                    
                                          "TOOLS . . ,\n" 
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
                            ),
                          ) ,
                                  
                            SizedBox( height: hi / 15 ,) ,
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
                              padding: EdgeInsets.all(wi / 10 ) ,
                              child: SingleChildScrollView(
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
                                            "BACKEND \nTECHONOLOGIES" ,
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
                                          
                                          "SKILLS . . ,\n"
                                          "Java , MySQL, "
                                          "SpringBoot\n"
                                          "Java Server Pages [ JSP ]\n"
                                          "Servlet\n"
                                          "Java Database Connectivity [ JDBC ]\n"
                                          "Oops , RestAPI , Dsa , Mvc\n\n" 
                                    
                                          "TOOLS . . ,\n" 
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

              
            // Positioned(
            //   left : 0 ,
            //   bottom: 0 ,
            //     child: FutureBuilder(
            //             future: Future.delayed(const Duration(milliseconds: 100)),
            //             builder: (context, snapshot) {
            //               if (snapshot.connectionState == ConnectionState.done) {
            //                 return icon(h: hi, w: wi);
            //               }
            //               return const SizedBox(); // Placeholder before icon loads
            //             },
            //           ),

            //   ),
        
          ],
        ),
      ),
    );
  }
}




class iconALM extends StatelessWidget {
  
  dynamic h, w;

  iconALM({
    super.key,
    required this.h,
    required this.w,
  });

   @override
  Widget build(BuildContext context) {


  final i1 =  BlocProvider.of < BlocOfI1 >( context ) ;
  final i2 =  BlocProvider.of < BlocI2 >( context ) ;
  final i3 =  BlocProvider.of < BlocGitI >( context ) ;
  final i4 =  BlocProvider.of < BlocL >( context ) ;
  final i5 =  BlocProvider.of < BlocLeet >( context ) ;
  final i6 =  BlocProvider.of < BlocMailI >( context ) ;

  
                  i1.add ( IconsI1(0) ) ;
                  i2.add ( PhoneI2(0) ) ;
                  i3.add ( GitI(0) ) ;
                  i4.add ( LinkedinI(0) ) ;
                  i5.add ( Leet(0) ) ;
                  i6.add ( MailI(0) ) ;


    return Positioned(
      left:  20  ,
      bottom: 0 ,
      child: RotatedBox(
        quarterTurns: 0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          children: [
                    
                    
            // if ( context.watch < BlocMail > ().state > w / 22 ) SizedBox( height: w / 30 , ) ,
            // if ( context.watch < BlocMail > ().state > w / 22 ) TweenAnimationBuilder(
            //   curve: Curves.decelerate,
            //   tween: Tween < double > ( begin:  0 , end: w / 10 ),
            //   duration: Duration(milliseconds: 1000 ),
            //   builder: ( context , s , child ) {
            //     return Container(
            //       height: s ,
            //       width: 1.5 ,
            //       color: Colors.black ,
            //     );
            //   }
            // ) ,
                    
            if ( context.watch < BlocLeet > ().state > w / 22 ) SizedBox( height: w / 20 , ) ,
            if ( context.watch < BlocLeet > ().state > w / 22 ) BlocBuilder < BlocMailI , double >(
              builder: (context, state)  {
                return TweenAnimationBuilder(
                  tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
                  curve: Curves.easeInToLinear ,
                  duration: Duration( milliseconds: 600 ),
                  builder: (context, r, child) {
                    i6.add ( MailI(r) ) ;
                    return GestureDetector(
                      onTap: () {
                        String? encodeQueryParameters(Map<String, String> params) {
                          return params.entries
                              .map((MapEntry<String, String> e) =>
                                  '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
                              .join('&');
                          }
                        // ···
                          final Uri emailLaunchUri = Uri(
                            scheme: 'mailto',
                            path: 'girigdr71@gmail.com',
                            query: encodeQueryParameters(<String, String>{
                              'subject': '',
                            }),
                          );
        
                          launchUrl(emailLaunchUri);
                      },
                      child: Container(
                        height: r ,
                        width: r ,
                        decoration: BoxDecoration(
                        color: const Color.fromARGB(0, 0, 0, 0) ,
                          image: DecorationImage(image: AssetImage("assets/image/mail1.png")  )
                        ),
                      ),
                    ) ;
                  }
                )  ;
              }
            ),
                    
            if ( context.watch < BlocL > ().state > w / 22 ) SizedBox( height: min ( h , w ) / 20 , ) ,
            if ( context.watch < BlocL > ().state > w / 22 ) BlocBuilder < BlocLeet , double >(
              builder: (context, state)  {
                return TweenAnimationBuilder(
                  tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
                  curve: Curves.easeInToLinear ,
                  duration: Duration( milliseconds: 600 ),
                  builder: (context, r, child) {
                    i5.add ( Leet(r) ) ;
                    return GestureDetector(
                      onTap: () async {
                        final Uri url = Uri.parse('https://leetcode.com/u/giri____gdr____/');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url, mode: LaunchMode.externalApplication);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        height: r ,
                        width: r ,
                        decoration: BoxDecoration(
                        // color: const Color.fromARGB(255, 0, 0, 0) ,
                          image: DecorationImage(image: AssetImage("assets/image/leetcodeW.png")  )
                        ),
                      ),
                    );
                  }
                )  ;
              }
            ),
                    
            if ( context.watch < BlocGitI > ().state > w / 22 ) SizedBox( height: min ( h , w ) / 20 , ) ,
            if ( context.watch < BlocGitI > ().state > w / 22 ) BlocBuilder < BlocL , double >(
              builder: (context, state)  {
                return TweenAnimationBuilder(
                  curve: Curves.easeInToLinear ,
                  tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
                  duration: Duration( milliseconds: 600 ),
                  builder: (context, r, child) {
                    i4.add( LinkedinI(r)  ) ;
                    return GestureDetector(
                      onTap: () async {
                        final Uri url = Uri.parse('https://www.linkedin.com/in/giridharan-ravi-96b4b7294');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url, mode: LaunchMode.externalApplication);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        height: r ,
                        width: r ,
                        // color: Colors.black ,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("assets/image/link.png"))
                        ),
                      ),
                    );
                  }
                );
              }
            )  ,
                    
            if ( context.watch < BlocI2 > ().state > w / 22 ) SizedBox( height: min ( h , w ) / 20 , ) ,
            if ( context.watch < BlocI2 > ().state > w / 22 ) BlocBuilder < BlocGitI , double >(
              builder: (context, state)  {
                return TweenAnimationBuilder(
                  tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
                  curve: Curves.easeInToLinear ,
                  duration: Duration( milliseconds: 600 ),
                  builder: (context, r, child) {
                    i3.add ( GitI(r) ) ;
                    return GestureDetector(
                      onTap: () async {
                        final Uri url = Uri.parse('https://github.com/girigdr');
                        if (await canLaunchUrl(url)) {
                          await launchUrl(url, mode: LaunchMode.externalApplication);
                        } else {
                          throw 'Could not launch $url';
                        }
                      },
                      child: Container(
                        height: r ,
                        width: r ,
                        decoration: BoxDecoration(
                        // color: const Color.fromARGB(255, 0, 0, 0) ,
                          image: DecorationImage(image: AssetImage("assets/image/gitW.png") )
                        ),
                      ),
                    );
                  }
                )  ;
              }
            ),
            
            
            if ( context.watch<BlocOfI1>().state == w / 5 )  SizedBox( height: min ( h , w ) / 20 , ) ,
            if (context.watch<BlocOfI1>().state == w / 5 ) BlocBuilder < BlocI2 , double >(
              builder: (context, state)  {
                return TweenAnimationBuilder(
                  curve: Curves.easeInToLinear ,
                  tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
                  duration: Duration( milliseconds: 600 ),
                  builder: (context, r, child) {
                    i2.add ( PhoneI2(r) ) ;
                    return GestureDetector(
                      onTap : () => makePhoneCall() ,
                      child: Container(
                        height: r ,
                        width: r ,
                        decoration: BoxDecoration(
                        // color: Colors.black ,
                          image: DecorationImage(image: AssetImage("assets/image/p2.png"))
                        ),
                      ),
                    );
                  }
                ) ;
              }
            )  ,
            SizedBox( height: min ( h , w ) / 20 , ) ,
            BlocBuilder < BlocOfI1 , double >(
              builder: (context, state)  {
                return TweenAnimationBuilder(
                        curve: Curves.decelerate,
                        tween: Tween < double > ( begin:  0 , end: min ( h , w ) / 5 ,),
                        duration: Duration(milliseconds: 1000 ),
                        builder: ( context , s , child ) {
                          i1.add ( IconsI1(s) ) ;
                          return Align(
                            alignment: Alignment.centerRight ,
                            child: Container(
                              height: s ,
                              width: w / 20 ,
                              color: const Color.fromARGB(0, 219, 66, 66) ,
                              child: Center(
                                child: Container(
                                  height: s,
                                  width: 1.5 ,
                                  color: const Color.fromARGB(255, 255, 255, 255) ,
                                ),
                              ),
                            ),
                          );
                        }
                      );
              }
            ) ,
          
          ],
        ),
      ),
    )  ;
  }
}





// class icon extends StatelessWidget {
  
//   dynamic h, w;

//   icon({
//     super.key,
//     required this.h,
//     required this.w,
//   });

//    @override
//   Widget build(BuildContext context) {


//   final i1 =  BlocProvider.of < BlocOfI1 >( context ) ;
//   final i2 =  BlocProvider.of < BlocI2 >( context ) ;
//   final i3 =  BlocProvider.of < BlocGitI >( context ) ;
//   final i4 =  BlocProvider.of < BlocL >( context ) ;
//   final i5 =  BlocProvider.of < BlocLeet >( context ) ;
//   final i6 =  BlocProvider.of < BlocMailI >( context ) ;

  
//                   i1.add ( IconsI1(0) ) ;
//                   i2.add ( PhoneI2(0) ) ;
//                   i3.add ( GitI(0) ) ;
//                   i4.add ( LinkedinI(0) ) ;
//                   i5.add ( Leet(0) ) ;
//                   i6.add ( MailI(0) ) ;


//     return Positioned(
//       left:  w / 6  ,
//       bottom: 0 ,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center ,
//         children: [
                  
                  
//           // if ( context.watch < BlocMail > ().state > w / 22 ) SizedBox( height: w / 30 , ) ,
//           // if ( context.watch < BlocMail > ().state > w / 22 ) TweenAnimationBuilder(
//           //   curve: Curves.decelerate,
//           //   tween: Tween < double > ( begin:  0 , end: w / 10 ),
//           //   duration: Duration(milliseconds: 1000 ),
//           //   builder: ( context , s , child ) {
//           //     return Container(
//           //       height: s ,
//           //       width: 1.5 ,
//           //       color: Colors.black ,
//           //     );
//           //   }
//           // ) ,
                  
//           if ( context.watch < BlocLeet > ().state > w / 22 ) SizedBox( height: w / 20 , ) ,
//           if ( context.watch < BlocLeet > ().state > w / 22 ) BlocBuilder < BlocMailI , double >(
//             builder: (context, state)  {
//               return TweenAnimationBuilder(
//                 tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
//                 curve: Curves.easeInToLinear ,
//                 duration: Duration( milliseconds: 600 ),
//                 builder: (context, r, child) {
//                   i6.add ( MailI(r) ) ;
//                   return GestureDetector(
//                     onTap: () {
//                       String? encodeQueryParameters(Map<String, String> params) {
//                         return params.entries
//                             .map((MapEntry<String, String> e) =>
//                                 '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
//                             .join('&');
//                         }
//                       // ···
//                         final Uri emailLaunchUri = Uri(
//                           scheme: 'mailto',
//                           path: 'girigdr71@gmail.com',
//                           query: encodeQueryParameters(<String, String>{
//                             'subject': '',
//                           }),
//                         );

//                         launchUrl(emailLaunchUri);
//                     },
//                     child: Container(
//                       height: r ,
//                       width: r ,
//                       decoration: BoxDecoration(
//                       color: const Color.fromARGB(0, 0, 0, 0) ,
//                         image: DecorationImage(image: AssetImage("assets/image/mail1.png")  )
//                       ),
//                     ),
//                   ) ;
//                 }
//               )  ;
//             }
//           ),
                  
//           if ( context.watch < BlocL > ().state > w / 22 ) SizedBox( height: min ( h , w ) / 20 , ) ,
//           if ( context.watch < BlocL > ().state > w / 22 ) BlocBuilder < BlocLeet , double >(
//             builder: (context, state)  {
//               return TweenAnimationBuilder(
//                 tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
//                 curve: Curves.easeInToLinear ,
//                 duration: Duration( milliseconds: 600 ),
//                 builder: (context, r, child) {
//                   i5.add ( Leet(r) ) ;
//                   return GestureDetector(
//                     onTap: () async {
//                       final Uri url = Uri.parse('https://leetcode.com/u/giri____gdr____/');
//                       if (await canLaunchUrl(url)) {
//                         await launchUrl(url, mode: LaunchMode.externalApplication);
//                       } else {
//                         throw 'Could not launch $url';
//                       }
//                     },
//                     child: Container(
//                       height: r ,
//                       width: r ,
//                       decoration: BoxDecoration(
//                       // color: const Color.fromARGB(255, 0, 0, 0) ,
//                         image: DecorationImage(image: AssetImage("assets/image/leetcodeW.png")  )
//                       ),
//                     ),
//                   );
//                 }
//               )  ;
//             }
//           ),
                  
//           if ( context.watch < BlocGitI > ().state > w / 22 ) SizedBox( height: min ( h , w ) / 20 , ) ,
//           if ( context.watch < BlocGitI > ().state > w / 22 ) BlocBuilder < BlocL , double >(
//             builder: (context, state)  {
//               return TweenAnimationBuilder(
//                 curve: Curves.easeInToLinear ,
//                 tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
//                 duration: Duration( milliseconds: 600 ),
//                 builder: (context, r, child) {
//                   i4.add( LinkedinI(r)  ) ;
//                   return GestureDetector(
//                     onTap: () async {
//                       final Uri url = Uri.parse('https://www.linkedin.com/in/giridharan-ravi-96b4b7294');
//                       if (await canLaunchUrl(url)) {
//                         await launchUrl(url, mode: LaunchMode.externalApplication);
//                       } else {
//                         throw 'Could not launch $url';
//                       }
//                     },
//                     child: Container(
//                       height: r ,
//                       width: r ,
//                       // color: Colors.black ,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(image: AssetImage("assets/image/link.png"))
//                       ),
//                     ),
//                   );
//                 }
//               );
//             }
//           )  ,
                  
//           if ( context.watch < BlocI2 > ().state > w / 22 ) SizedBox( height: min ( h , w ) / 20 , ) ,
//           if ( context.watch < BlocI2 > ().state > w / 22 ) BlocBuilder < BlocGitI , double >(
//             builder: (context, state)  {
//               return TweenAnimationBuilder(
//                 tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
//                 curve: Curves.easeInToLinear ,
//                 duration: Duration( milliseconds: 600 ),
//                 builder: (context, r, child) {
//                   i3.add ( GitI(r) ) ;
//                   return GestureDetector(
//                     onTap: () async {
//                       final Uri url = Uri.parse('https://github.com/girigdr');
//                       if (await canLaunchUrl(url)) {
//                         await launchUrl(url, mode: LaunchMode.externalApplication);
//                       } else {
//                         throw 'Could not launch $url';
//                       }
//                     },
//                     child: Container(
//                       height: r ,
//                       width: r ,
//                       decoration: BoxDecoration(
//                       // color: const Color.fromARGB(255, 0, 0, 0) ,
//                         image: DecorationImage(image: AssetImage("assets/image/gitW.png") )
//                       ),
//                     ),
//                   );
//                 }
//               )  ;
//             }
//           ),
          
          
//           if ( context.watch<BlocOfI1>().state == w / 4 )  SizedBox( height: min ( h , w ) / 20 , ) ,
//           if (context.watch<BlocOfI1>().state == w / 4 ) BlocBuilder < BlocI2 , double >(
//             builder: (context, state)  {
//               return TweenAnimationBuilder(
//                 curve: Curves.easeInToLinear ,
//                 tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
//                 duration: Duration( milliseconds: 600 ),
//                 builder: (context, r, child) {
//                   i2.add ( PhoneI2(r) ) ;
//                   return GestureDetector(
//                     onTap : () => makePhoneCall() ,
//                     child: Container(
//                       height: r ,
//                       width: r ,
//                       decoration: BoxDecoration(
//                       // color: Colors.black ,
//                         image: DecorationImage(image: AssetImage("assets/image/p2.png"))
//                       ),
//                     ),
//                   );
//                 }
//               ) ;
//             }
//           )  ,
//           SizedBox( height: min ( h , w ) / 20 , ) ,
//           BlocBuilder < BlocOfI1 , double >(
//             builder: (context, state)  {
//               return TweenAnimationBuilder(
//                       curve: Curves.decelerate,
//                       tween: Tween < double > ( begin:  0 , end: min ( h , w ) / 4 ,),
//                       duration: Duration(milliseconds: 1000 ),
//                       builder: ( context , s , child ) {
//                         i1.add ( IconsI1(s) ) ;
//                         return Positioned(
//                           bottom: 0 ,
//                           child: Container(
//                             height: s ,
//                             width: w / 20 ,
//                             color: const Color.fromARGB(0, 219, 66, 66) ,
//                             child: Center(
//                               child: Container(
//                                 height: s,
//                                 width: 1.5 ,
//                                 color: const Color.fromARGB(255, 255, 255, 255) ,
//                               ),
//                             ),
//                           ),
//                         );
//                       }
//                     );
//             }
//           ) ,
        
//         ],
//       ),
//     )  ;
//   }
// }