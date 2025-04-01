




import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilio_giridharan/BLOC/AboutIcon.dart';
import 'package:portfoilio_giridharan/BLOC/lightTheme.dart';
import 'package:portfoilio_giridharan/Education/About.dart';
import 'package:portfoilio_giridharan/LINKS/Link.dart';
import 'package:portfoilio_giridharan/MOBILE/LandscapeMode.dart';
import 'package:url_launcher/url_launcher.dart';


class Aboutlandscapemode extends StatefulWidget {
  
  Aboutlandscapemode({super.key});


  @override
  State<Aboutlandscapemode> createState() => _AboutlandscapemodeState();
}

class _AboutlandscapemodeState extends State<Aboutlandscapemode> {

  
  @override
  Widget build(BuildContext context) {

    final mediaQuery = MediaQuery.of(context);
              final t = mediaQuery.padding.top;
              final b = mediaQuery.padding.bottom;
              final l = mediaQuery.padding.left;
              final r = mediaQuery.padding.right;
    final wi = MediaQuery.of( context ).size.height   ;
    final hi = MediaQuery.of( context ).size.width  ;




    return RotatedBox(
      quarterTurns: 1,
      child: SafeArea(
        child: Scaffold(
          // backgroundColor: const Color.fromARGB(255, 110, 110, 110),
          body: Stack(
            children: [
          
              BubbleScreen() ,
          
              Container(
                height: hi,
                width: wi, 
                color:  Color.fromARGB(0, 110, 110, 110),
                child: Stack(
                  children: [
      
                        // Timer( Duration( milliseconds: 100 ), () => icon( h : hi , w : wi  )  ,),
                        
      
                    
                    Stack (
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                            
                        Align(
                          alignment: Alignment( - 1, -0.7 ),
                          child: RotatedBox(
                          quarterTurns: 3,
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
                          ),
                        ) ,
                            
                        
                        Align(
                          alignment: Alignment(  0.5, 0 ),
                          child: Container(
                          height: hi / 1.9 ,
                          width: wi / 1.6,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 110, 110, 110),
                            border: Border.all(
                              width: 1 , 
                              color: const Color.fromARGB(255, 255, 255, 255),
                            )
                          ),  
                          child: RotatedBox(
                            quarterTurns: 3,
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
                          ),
                                                ),
                        ) ,
                            
                      ],
                    ),
                  ],
                ) ,
              ) ,
          
          
              Align(
                  alignment: Alignment( -0.8  ,  0 ),
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
          
                          // Navigator.pushAndRemoveUntil(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => MyApp() ),
                          //   (route) => false, // Removes all previous routes
                          // );
                            // Navigator.pushAndRemoveUntil(
                            //   context,
                            //   MaterialPageRoute(builder: (context) => Loader() , ),
                            //   (route) => false,
                            // );
      
                            // Future.delayed(Duration(milliseconds: 200), () {
                            //   Navigator.pushAndRemoveUntil(
                            //     context,
                            //     MaterialPageRoute(builder: (context) => MyApp()),
                            //     (route) => false,
                            //   );
                            // });
      
          
                        }, 
      
                        
                        icon:RotatedBox(
                          quarterTurns: 3,child: Icon( Icons.arrow_back ))
                        ),
                    ),
                  ),
                ) , 
                FutureBuilder(
                          future: Future.delayed(const Duration(milliseconds: 100)),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState == ConnectionState.done) {
                              return iconALM( h : hi , w : wi  );
                            }//
                            return const SizedBox(); // Placeholder before icon loads
                          },
                        ),
          
            ],
          ),
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
      right:  0  ,
      bottom: w / 6 ,
      child: RotatedBox(
        quarterTurns: 3,
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


class iconALM1 extends StatelessWidget {
  iconALM1({
    super.key });
@override
  Widget build(BuildContext context) {
              final mediaQuery = MediaQuery.of(context);
              // final t = mediaQuery.padding.top;
              // final b = mediaQuery.padding.bottom;
              // final l = mediaQuery.padding.left;
              // final r = mediaQuery.padding.right;
    double h = MediaQuery.of( context ).size.height;
    // double w = MediaQuery.of( context ).size.width ;
    double w = MediaQuery.of( context ).size.width ;
    

  final i1 =  BlocProvider.of < BlocOfI1 >( context ) ;
  final i2 =  BlocProvider.of < BlocI2 >( context ) ;
  final i3 =  BlocProvider.of < BlocGitI >( context ) ;
  final i4 =  BlocProvider.of < BlocL >( context ) ;
  final i5 =  BlocProvider.of < BlocLeet >( context ) ;
  final i6 =  BlocProvider.of < BlocMailI >( context ) ;

  
                  // i1.add ( IconsI1(0) ) ;
                  // i2.add ( PhoneI2(0) ) ;
                  // i3.add ( GitI(0) ) ;
                  // i4.add ( LinkedinI(0) ) ;
                  // i5.add ( Leet(0) ) ;
                  // i6.add ( MailI(0) ) ;


    return Positioned(
      left:  w / 30  ,
      bottom: 0 ,
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
    )  ;
  }
}

class Bubble {
  double x, y, dx, dy, size;
  Color color;

  Bubble({
    required this.x,
    required this.y,
    required this.dx,
    required this.dy,
    required this.size,
    required this.color,
  });
}
dynamic arr = [ const Color.fromARGB(100, 158, 158, 158) ,
 const Color.fromARGB(100, 107, 105, 105) ,
  const Color.fromARGB(100, 212, 206, 206)  ,
   const Color.fromARGB(100, 68, 66, 66)  ]; 
class BubbleScreen extends StatefulWidget {
  const BubbleScreen({Key? key}) : super(key: key);

  @override
  _BubbleScreenState createState() => _BubbleScreenState();
}

class _BubbleScreenState extends State<BubbleScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<Bubble> bubbles = [];
  final Random random = Random();

  @override
  void initState() {
    super.initState();

    // Controller for smooth animations
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 20), // Increased duration for smoothness
    )..addListener(() {
        moveBubbles();
      });

    _controller.repeat();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      generateBubbles(); // Generate bubbles after layout is complete
    });
  }

  void generateBubbles() {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    for (int i = 0; i < max( screenHeight , screenWidth ) / 20 ; i++) {
      bubbles.add(
        Bubble(
          x: random.nextDouble() * screenWidth, // Random X position
          y: random.nextDouble() * screenHeight, // Random Y position
          dx: (random.nextDouble() - 0.5) * 2, // Slower horizontal speed
          dy: (random.nextDouble() - 0.5) * 2, // Slower vertical speed
          size: random.nextDouble() * 20 + 10 , // Bubble size (30 to 80)
          // color: Color.fromRGBO(
          //   random.nextInt(256),
          //   random.nextInt(256),
          //   random.nextInt(256),
          //   0.8,
          // ),
          color: arr[ random.nextInt( 3 )]
        ),
      );
    }
    setState(() {}); // Update UI after generating bubbles
  }

  
  void moveBubbles() {
    setState(() {
      final screenWidth = MediaQuery.of(context).size.width;
      final screenHeight = MediaQuery.of(context).size.height;

      for (var bubble in bubbles) {
        bubble.x += bubble.dx;
        bubble.y += bubble.dy;

        // Bounce horizontally
        if (bubble.x <= 0 || bubble.x + bubble.size >= screenWidth) {
          bubble.dx = -bubble.dx;
        }

        // Bounce vertically
        if (bubble.y <= 0 || bubble.y + bubble.size >= screenHeight) {
          bubble.dy = -bubble.dy;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:   Color.fromARGB(255, 0, 0, 0),
      body: Stack(
        children: bubbles.map((bubble) {
          return AnimatedPositioned(
            duration: const Duration(milliseconds: 40), // Smooth transition
            left: bubble.x,
            top: bubble.y,
            child: Container(
              width: bubble.size,
              height: bubble.size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: bubble.color,
                // boxShadow: [
                //   BoxShadow(
                //     color: bubble.color.withOpacity(0.5),
                //     blurRadius: 10,
                //     spreadRadius: 1,
                //   ),
                // ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}