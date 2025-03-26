


import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfoilio_giridharan/Education/Skills.dart';
import '../BLOC/lightTheme.dart';
class E extends StatefulWidget {
  double h , w ,  t , b ;
  dynamic edu ;
   E({super.key , required this.edu , required this.h , required this .w  , required this.t , required this .b });

  @override
  State<E> createState() => _EState();
}

class _EState extends State<E> {

  



  @override
  Widget build(BuildContext context) {
    
    PageController pc = PageController( initialPage:  0 ) ;


    
    final hi = MediaQuery.of( context ).size.height;
    final wi = MediaQuery.of( context ).size.width;
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
                child: BubbleScreen(),
              ) ,
            // ) ,
      
                Container(
                  height: hi,
                  width: wi,
                  child: Column (
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
      
                      Align(
                        alignment: Alignment( 0.5, -0.7 ),
                        child: Container(
                        height: hi / 10 ,
                        width: wi / 1.7 ,
                          color: const Color.fromARGB(0, 255, 193, 7) ,
                          child: FittedBox(
                            child: Row(
                              children: [
                                Text(
                                  'EDUCATION ',
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
                      height: hi / 1.8 ,
                      width: wi / 1.3,
                    ) ,
      
                     Align(
                      alignment: Alignment( -0.4, 0.8 ),
                      child: Container(
                        height: hi / 10 ,
                        width: wi / 2 ,
                        color: const Color.fromARGB(0, 255, 193, 7) ,
                        child: FittedBox(
                          child: Row(
                            children: [
                              Text(
                                'SWIPE . . . ',
                                style: TextStyle(
                                  fontFamily: 'f1',
                                  color: const Color.fromARGB(100, 255, 255, 255)
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
      
      
                    ],
                  ) ,
                ) ,
      
            
      
      
            
            
            Container(
              height: hi,
              width: wi,
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

            Positioned(
              left : 0 ,
              bottom: 0 ,
                child: FutureBuilder(
                        future: Future.delayed(const Duration(milliseconds: 100)),
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.done) {
                            return icon(h: hi, w: wi);
                          }
                          return const SizedBox(); // Placeholder before icon loads
                        },
                      ),

              ),
      
      
      
            
        
        
        
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
