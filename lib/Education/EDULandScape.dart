




import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilio_giridharan/BLOC/AboutIcon.dart';
import 'package:portfoilio_giridharan/Education/Skills.dart';
import 'package:portfoilio_giridharan/LINKS/Link.dart';
import 'package:url_launcher/url_launcher.dart';
import '../BLOC/lightTheme.dart';
class EE extends StatefulWidget {
  double h , w ,  t , b ;
  dynamic edu ;
   EE({super.key , required this.edu , required this.h , required this .w  , required this.t , required this .b });

  @override
  State<EE> createState() => _EEState();
}

class _EEState extends State<EE> {

  



  @override
  Widget build(BuildContext context) {
    
    PageController pc = PageController( initialPage:  0 ) ;


    
    final hi = MediaQuery.of( context ).size.width;
    final wi = MediaQuery.of( context ).size.height;
    // double slider = 0 ;

    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(157, 0, 0, 0),
        body: Stack(
          children: [
      
            // Container(
            //       height: hi,
            //       width: wi,
              // child: 
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: 
              BubbleScreen(),
              ) ,
            // ) ,
      
                // Container(
                //   height: hi,
                //   width: wi,
                //   child: Column (
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
      
                //       Align(
                //         alignment: Alignment( 0.5, -0.7 ),
                //         child: Container(
                //         height: hi / 10 ,
                //         width: wi / 1.7 ,
                //           color: const Color.fromARGB(0, 255, 193, 7) ,
                //           child: FittedBox(
                //             child: Row(
                //               children: [
                //                 Text(
                //                   'EDUCATION ',
                //                   style: TextStyle(
                //                     fontFamily: 'f1',
                //                     color: const Color.fromARGB(110, 255, 255, 255)
                //                   ),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ),
                //       ) ,
      
                      
                //      Container(
                //       height: hi / 1.8 ,
                //       width: wi / 1.3,
                //     ) ,
      
                //      Align(
                //       alignment: Alignment( -0.4, 0.8 ),
                //       child: Container(
                //         height: hi / 10 ,
                //         width: wi / 2 ,
                //         color: const Color.fromARGB(0, 255, 193, 7) ,
                //         child: FittedBox(
                //           child: Row(
                //             children: [
                //               Text(
                //                 'SWIPE . . . ',
                //                 style: TextStyle(
                //                   fontFamily: 'f1',
                //                   color: const Color.fromARGB(100, 255, 255, 255)
                //                 ),
                //               ),
                //             ],
                //           ),
                //         ),
                //       ),
                //     ),
      
      
                //     ],
                //   ) ,
                // ) ,

                 Align(
                      alignment: Alignment( 0.7, 0.7 ),
                      child: Container(
                        width: wi / 6 ,
                        height: hi / 3,
                          color: const Color.fromARGB(0, 235, 175, 9) ,
                          child: RotatedBox(
                            quarterTurns: 0,
                            child: FittedBox(
                              child: Column(
                                children: [
                                  Text(
                                    'E',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                  Text(
                                    'D',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                  Text(
                                    'U',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                  Text(
                                    'C',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                  Text(
                                    'A',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                  Text(
                                    'T',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                  Text(
                                    'I',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                   Text(
                                    'O',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                   Text(
                                    'N',
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
                    ),

                 Align(
                      alignment: Alignment( -0.7, -0.5 ),
                      child: Container(
                        width: wi / 6 ,
                        height: hi / 3,
                          color: const Color.fromARGB(0, 235, 175, 9) ,
                          child: RotatedBox(
                            quarterTurns: 0,
                            child: FittedBox(
                              child: Column(
                                children: [
                                  Text(
                                    'S',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                  Text(
                                    'W',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                  Text(
                                    'I',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                  Text(
                                    'P',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                  Text(
                                    'E',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                  Text(
                                    ' ',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                  Text(
                                    '',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                  Text(
                                    ' ',
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
                    ),
      
            
      
      
            
            
            Container(
              height: wi,
              width: hi,
              child: PageView.builder(
                itemCount: map.length ,
                controller: pc ,
                itemBuilder: (context, index) {
                  
                  return Center(
                    child: 
                    // Container(
                    //   height: hi / 1.8 ,
                    //   width: wi / 1.3,
                    //   decoration: BoxDecoration(
                    //     border: Border.all(
                    //       width: 1 ,
                    //       color: const Color.fromARGB(255, 255, 255, 255),
                    //     ),
                    //       color: const Color.fromARGB(255, 0, 0, 0)
                    //   // borderRadius: BorderRadius.all(Radius.circular( 10 ))
                    
                    //   ),
                    Container(
                      height: wi / 1.6 ,
                      width: hi / 2,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 110, 110, 110),
                        border: Border.all(
                          width: 1 , 
                          color: const Color.fromARGB(255, 255, 255, 255),
                        )
                      ),  
                      child: Padding(
                        padding: EdgeInsets.all( wi / 10 ),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox( height: hi / 25 ,),
                              Wrap( alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  TweenAnimationBuilder(
                                    tween: Tween<double>(begin: - 1, end: 0 ),
                                    duration: Duration(milliseconds: 500 ),
                                    builder: (context, value, child) {
                                      return Align(
                                        alignment: Alignment( value , 0),
                                        child: Text(
                                          map[ index + 1 ][ 0 ] ,
                                          textAlign: TextAlign.center ,
                                          style: TextStyle(
                                            fontFamily: 'f1',
                                            fontSize: hi / 40  ,
                                            color: const Color.fromARGB(255, 255, 255, 255)
                                          ),
                                        )
                                      );
                                    },
                                  ),
                                ],
                              ),
                              SizedBox( height: hi / 30 ,),
      
                              Wrap(alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  TweenAnimationBuilder(
                                    tween: Tween<double>(begin: 1, end: 0 ),
                                    duration: Duration(milliseconds: 500 ),
                                    builder: (context, value, child) {
                                      return Align(
                                        alignment: Alignment( value , 0 ),
                                        child: Text(
                                          map[ index + 1 ][ 1 ] ,
                                          textAlign: TextAlign.center ,
                                          style: TextStyle(
                                            fontFamily: 'f1',
                                            fontSize: hi / 45  ,
                                            color: const Color.fromARGB(255, 202, 202, 202)
                                          ),
                                        )
                                      );
                                    },
                                  ),
                                ],
                              ),
                              SizedBox( height: hi / 15 ,),
                              Wrap(alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  TweenAnimationBuilder(
                                    tween: Tween<double>(begin: - 1, end: 0 ),
                                    duration: Duration(milliseconds: 500 ),
                                    builder: (context, value, child) {
                                      return Align(
                                        alignment: Alignment( value , 0),
                                        child: Text(
                                          map[ index + 1 ][ 2 ] ,
                                          textAlign: TextAlign.center ,
                                          style: TextStyle(
                                            fontFamily: 'f1',
                                            fontSize: hi / 40  ,
                                            color: const Color.fromARGB(255, 255, 255, 255)
                                          ),
                                        )
                                      );
                                    },
                                  ),
                                ],
                              ),
                              SizedBox( height: hi / 30 ,),
                               Wrap( 
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  TweenAnimationBuilder(
                                    tween: Tween<double>(begin: 1, end: 0 ),
                                    duration: Duration(milliseconds: 500 ),
                                    builder: (context, value, child) {
                                      return Align(
                                        alignment: Alignment( value , 0 ),
                                        child: Text(
                                          map[ index + 1 ][ 3 ] ,
                                          textAlign: TextAlign.center ,
                                          style: TextStyle(
                                            fontFamily: 'f1',
                                            fontSize: hi / 45  ,
                                            color: const Color.fromARGB(255, 202, 202, 202)
                                          ),
                                        )
                                      );
                                    },
                                  ),
                                ],
                              ),
                              SizedBox( height: hi / 15 ,),
                              Wrap(alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  TweenAnimationBuilder(
                                    tween: Tween<double>(begin: - 1, end: 0 ),
                                    duration: Duration(milliseconds: 500 ),
                                    builder: (context, value, child) {
                                      return Align(
                                        alignment: Alignment( value , 0),
                                        child: Text(
                                          map[ index + 1 ][ 4 ] ,
                                          textAlign: TextAlign.center ,
                                          style: TextStyle(
                                            fontFamily: 'f1',
                                            fontSize: hi / 40  ,
                                            color: const Color.fromARGB(255, 255, 255, 255)
                                          ),
                                        )
                                      );
                                    },
                                  ),
                                ],
                              ),
                              SizedBox( height: hi / 30 ,),
                              Wrap(alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  TweenAnimationBuilder(
                                    tween: Tween<double>(begin: 1, end: 0 ),
                                    duration: Duration(milliseconds: 500 ),
                                    builder: (context, value, child) {
                                      return Align(
                                        alignment: Alignment( value , 0 ),
                                        child: Text(
                                          map[ index + 1 ][ 5 ] ,
                                          textAlign: TextAlign.center ,
                                          style: TextStyle(
                                            fontFamily: 'f1',
                                            fontSize: hi / 45  ,
                                            color: const Color.fromARGB(255, 202, 202, 202)
                                          ),
                                        )
                                      );
                                    },
                                  ),
                                ],
                              ),
                              SizedBox( height: hi / 15 ,),
                              Wrap(alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  TweenAnimationBuilder(
                                    tween: Tween<double>(begin: - 1, end: 0 ),
                                    duration: Duration(milliseconds: 500 ),
                                    builder: (context, value, child) {
                                      return Align(
                                        alignment: Alignment( value , 0),
                                        child: Text(
                                          map[ index + 1 ][ 6 ] ,
                                          textAlign: TextAlign.center ,
                                          style: TextStyle(
                                            fontFamily: 'f1',
                                            fontSize: hi / 40  ,
                                            color: const Color.fromARGB(255, 255, 255, 255)
                                          ),
                                        )
                                      );
                                    },
                                  ),
                                ],
                              ),
                              SizedBox( height: hi / 30 ,),
                              Wrap(
                                alignment: WrapAlignment.center,
                                crossAxisAlignment: WrapCrossAlignment.center,
                                children: [
                                  TweenAnimationBuilder(
                                    tween: Tween<double>(begin: 1, end: 0 ),
                                    duration: Duration(milliseconds: 500 ),
                                    builder: (context, value, child) {
                                      return Align(
                                        alignment: Alignment( value , 0 ),
                                        child: Text(
                                          map[ index + 1 ][ 7 ] ,
                                          textAlign: TextAlign.center ,
                                          style: TextStyle(
                                            fontFamily: 'f1',
                                            fontSize: hi / 45  ,
                                            color: const Color.fromARGB(255, 202, 202, 202)
                                          ),
                                        )
                                      );
                                    },
                                  ),
                                ],
                              ),
                              SizedBox( height: hi / 15 ,),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ) ;
                },
              ),
            ),
      
      
      
            
        
      
            //   Align(
            //     alignment: Alignment( 0.5, -0.7 ),
            //     child: Container(
            //     height: hi / 15 ,
            //     width: wi / 3 ,
            //       color: const Color.fromARGB(0, 255, 193, 7) ,
            //       child: FittedBox(
            //         child: Row(
            //           children: [
            //             Text(
            //               'EDUCATION ',
            //               style: TextStyle(
            //                 fontFamily: 'f1',
            //                 color: const Color.fromARGB(110, 255, 255, 255)
            //               ),
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ) ,
      
        
            // Align(
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
            //               color: const Color.fromARGB(100, 255, 255, 255)
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ),
            // ),
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
            //     child: 
            FutureBuilder(
                        future: Future.delayed(const Duration(milliseconds: 100)),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.done) {
                            return iconALM(h: hi, w: wi);
                          }
                          return const SizedBox(); // Placeholder before icon loads
                        },
                      ),

            //   ),
      
      
      
            
        
        
        
          ],
        ),
      ),
    );

    
  }
}

  
Map < dynamic , dynamic > map = {
   1 :      [ 'GRADE' , 'Grade X' , 
              'COMPLETED AT' , 'Christ the king matric hr., sec., school, Kumbakonam.' , 
              'MARK SCORED' , '85.6 Percentage' ,
              'MARK IN MATHEMATICS' , '89 Percentage' ,
            ]  ,
    2 :     [ 'GRADE' ,'Grade XII' , 
              'COMPLETED AT' , 'Karthi vidhyalaya matric hr., sec., school, Kumbakonam.' , 
              'MARK SCORED' , '71.5 Percentage' ,
              'MARK IN MATHEMATICS' , '86 Percentage' ,
            ]  , 
    3 :     [ 'GRADE' , 'Bachelor of Engineering [ BE ]' , 
              'MAJOR' , 'Electronics and Communication Engineering [ ECE ]' ,
              'COMPLETED AT' , 'Government college of engineering, Thanjavur \n[ GCE TJ ].' , 
              'MARK SCORED' , '7.54 CGPA' , 
            ]  , 
} ;






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
      backgroundColor: Colors.black,
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
      bottom:  0  ,
      left: w / 8 ,
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

