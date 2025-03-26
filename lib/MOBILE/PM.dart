


import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilio_giridharan/BLOC/lightTheme.dart';
import 'package:portfoilio_giridharan/Education/About.dart';
import 'package:portfoilio_giridharan/Education/Edu.dart';
import 'package:portfoilio_giridharan/Education/PRO.dart';
import 'package:portfoilio_giridharan/Education/Skills.dart';
import 'package:portfoilio_giridharan/LINKS/Link.dart';
import 'package:url_launcher/url_launcher.dart';

class P_M extends StatefulWidget {
  double t , b , l , r ;
   P_M({super.key , required this.t , required this .b  , required this.l , required this .r  });

  @override
  State<P_M> createState() => _P_MState();
}

class _P_MState extends State<P_M>  {



  @override
  Widget build(BuildContext context) {
    double h2 = 0 ;
    double h = MediaQuery.of( context ).size.height -  widget.t -  widget.b ;
    // double w = MediaQuery.of( context ).size.width ;
    double w = MediaQuery.of( context ).size.width - widget.r - widget.l ;
    final bloc1 = BlocProvider.of < BlocOfIconView >( context ) ;
    final git = BlocProvider.of < BlocGit >( context ) ;
    final phone = BlocProvider.of < BlocPhone >( context ) ;
    final mail = BlocProvider.of < BlocMail >( context ) ;
    final leetcode = BlocProvider.of < BlocLeetcode >( context ) ;
    final linkedin =  BlocProvider.of < BlocLinkedIn >( context ) ;
    final wl =  BlocProvider.of < BlocWL >( context ) ;
    final edu =  BlocProvider.of < BlocEdTF >( context ) ;



    return PM (edu ,  h , w , h2 , bloc1 , git , phone , mail , leetcode , linkedin , wl , widget.l , widget.r , widget.t , widget.b  , context ) ;
  }
}


Widget Skils ( w , h ,context ) {
    final skill =  BlocProvider.of < BlocSTF >( context ) ;

  return Positioned(
          right: w / 20 ,
          top: h / 5.5 ,
          child: RotatedBox(
            quarterTurns: 1 ,
            child: Stack(
              children: [
                
                
                TweenAnimationBuilder(
                    curve: Curves.decelerate ,
                    duration: Duration( milliseconds: 1000 ),
                    tween: ColorTween( begin: Colors.transparent ,end:  const Color.fromARGB(255, 0, 0, 0) ),
                    builder: (context, value, child) {
                    return Text( 
                      'SKILLS' , 
                      style: TextStyle( fontFamily: 'f1' , fontSize: w / 25, color: value  ) ,
                    );
                  }
                ),
                GestureDetector(
                  onTap: () { 

                      skill.add( STF( true ) ) ;
                  },
                  child: Container(
                    height: w / 15 ,
                    width: h / 15 ,
                    color: const Color.fromARGB(0, 255, 193, 7),
                  ),
                ) ,
              ],
            ),
          ),

        ) ;
}



Widget Pro ( w , h ,context ) {

  
    final project =  BlocProvider.of < BlocPTF >( context ) ;
  // final skill =  BlocProvider.of < BlocSTF >( context ) ;

  return Positioned(
          right: w / 20 ,
          bottom: 0 ,
          child: RotatedBox(
            quarterTurns: 1 ,
            child: Stack(
              children: [
                
                
                Positioned(
                  right: 0 ,
                  child: TweenAnimationBuilder(
                      curve: Curves.decelerate ,
                      duration: Duration( milliseconds: 1000 ),
                      tween: ColorTween( begin: Colors.transparent ,end:  const Color.fromARGB(255, 0, 0, 0) ),
                      builder: (context, value, child) {
                      return Text( 
                        'PRO' , 
                        style: TextStyle( fontFamily: 'f1' , fontSize: w / 25, color: value  ) ,
                      );
                    }
                  ),
                ),
                GestureDetector(
                  onTap: () { 

                      project.add( PTF( true ) ) ;
                  },
                  child: Container(
                    height: w / 15 ,
                    width: h / 15 ,
                    color: const Color.fromARGB(0, 255, 193, 7),
                  ),
                ) ,
              ],
            ),
          ),

        ) ;
}





dynamic PM ( edu , h , w , h2 , bloc1 , git , phone , mail , leetcode , linkedin , wl , l , r , t , b , context ) {
  h2 = 0 ;
  double m = 0 ;
  bloc1.add(IconsView(0)) ;
  git.add(Git(0)) ;
  phone.add( Phone(0)) ;
  mail.add(Mail(0)) ;
  leetcode.add( Leetcode(0)) ;
  linkedin.add(Linkedin(0)) ;
  edu.add(EdTF (false )) ;
  final about =  BlocProvider.of < BlocATF >( context ) ;
  final skill =  BlocProvider.of < BlocSTF >( context ) ;
  final project =  BlocProvider.of < BlocPTF >( context ) ;
  return Stack(
      children: [
        Positioned(
          top: 0,
          child: TweenAnimationBuilder(
            tween: Tween < double > ( begin:  0 ,  end :  h / 2 ), 
            duration: Duration( milliseconds: 600 ), 
            builder: (context, value, child) {
              double h1 = value ; 
              return Container(
                height: value ,
                width: w ,
                color: Color.fromARGB(255, 255, 255, 255) ,
                child: ( h1 == h / 2 ) ? Stack(
                  children: [
                    Skils(w, h , context ) ,
                    Pro(w, h , context ) ,
                    top( h , w , h2 ) ,
                    icon(wl :wl , h : h , w : w , bloc1 : bloc1 , git : git , phone : phone , mail : mail , leetcode : leetcode , linkedin: linkedin , h2 : h2  ),
                  ],
                ) : null 
              );
            },
          ),
        ) ,
        Positioned(
          bottom: 0 ,
          child: TweenAnimationBuilder(
            tween: Tween < double > ( begin:  0 ,  end :  h / 2  ), 
            duration: Duration( milliseconds: 600 ), 
            builder: (context, value, child) {
              double z = value ;
              return Container(
                height: value ,
                width: w ,
                color: Color.fromARGB(255, 0, 0, 0) ,
                child: ( z == h / 2 ) ? bottom( h, w , z , wl , context , l , r , t , b , edu  ) : null ,
              ) ;
            },
          ),
        ) ,
        // E( h: h , w:w ,  t:t , b:b )
        // if( context.watch < BlocEdTF > ().state )
        BlocBuilder<BlocEdTF, bool>(
          builder: (context, showE) {
            if (showE) {
              return TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: h ),
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 300),
                builder: (context, value, child) {
                  if (value == h ) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => E(edu: edu, h: h, w: w, t: t, b: b),
                        ),
                      );
                    });

                    Timer( Duration( milliseconds: 100 ), () => edu.add(EdTF ( false )) ,) ;
                    // edu.add(EdTF (false )) ;
                  }
                  return Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: value,
                      width: w,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      // child: ( value == h ) ? Navigator.push( context , MaterialPageRoute(builder: (context ) =>E( edu : edu , h: h , w:w ,  t:t , b:b ))) : Container() ;
          // , ( value == h ) ? E( edu : edu , h: h , w:w ,  t:t , b:b ) : 
                      child:SizedBox(),
                    ),
                  );
                },
              );
            }
            return Container(); // Don't show E when showE is false
          },
        ),

        BlocBuilder<BlocATF, bool>(
          builder: (context, showE) {
            if (showE) {
              return TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: w),
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 300),
                builder: (context, value, child) {

                  if (value == w) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => About() ,
                        ),
                      );
                    });
                    Timer( Duration( milliseconds: 100 ), () => about.add( ATF ( false ) ) ,) ;
                  }

                  return Positioned(
                    bottom: 0,
                    right: 0,
                    top: 0,
                    child: Container(
                      height: h,
                      width: value,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      // child: ( value == w ) ? About( about : about , l: h , r:w ,  t:t , b:b, ) : SizedBox(),
                      child: SizedBox(),

                    ),
                  );
                },
              );
            }
            return Container(); // Don't show E when showE is false
          },
        ),


        BlocBuilder<BlocSTF, bool>(
          builder: (context, showE) {
            if (showE) {
              return TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: w),
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 300),
                builder: (context, value, child) {

                  if (value == w) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Skills( skill : skill  , l: h , r:w ,  t:t , b:b, ) ,
                        ),
                      );
                    });

                    Timer( Duration( milliseconds: 100 ), () => skill.add( STF ( false ) ) ,) ;
                  }

                  return Positioned(
                    bottom: 0,
                    right: 0,
                    top: 0,
                    child: Container(
                      height: h,
                      width: value,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      // child: ( value == w ) ? About( about : about , l: h , r:w ,  t:t , b:b, ) : SizedBox(),
                      child: SizedBox(),

                    ),
                  );
                },
              );
            }
            return Container(); // Don't show E when showE is false
          },
        ),








        BlocBuilder<BlocPTF, bool>(
          builder: (context, showE) {
            if (showE) {
              return TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: w),
                curve: Curves.easeInOut,
                duration: Duration(milliseconds: 300),
                builder: (context, value, child) {

                  if (value == w) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Proj() ,
                        ),
                      );
                    });

                    Timer( Duration( milliseconds: 100 ), () => project.add( PTF ( false ) ) ,) ;
                  }

                  return Positioned(
                    bottom: 0,
                    right: 0,
                    top: 0,
                    child: Container(
                      height: h,
                      width: value,
                      color: const Color.fromARGB(255, 0, 0, 0),
                      // child: ( value == w ) ? About( about : about , l: h , r:w ,  t:t , b:b, ) : SizedBox(),
                      child: SizedBox(),

                    ),
                  );
                },
              );
            }
            return Container(); // Don't show E when showE is false
          },
        ),



      ],
    );
}

double n = 0 ;


dynamic bottom( h , w , h1 , wl , context , l , r , t , b  , edu ) {
  
  final about =  BlocProvider.of < BlocATF >( context ) ;
  final project =  BlocProvider.of < BlocPTF >( context ) ;
  return  Stack(
      children: [


        Positioned(
          right: w / 20 ,
          bottom: h / 5.5 ,
          child: RotatedBox(
            quarterTurns: 1 ,
            child: Stack(
              children: [

                
                
                
                TweenAnimationBuilder(
                    curve: Curves.decelerate ,
                    duration: Duration( milliseconds: 1000 ),
                    tween: ColorTween( begin: Colors.transparent ,end:  Colors.white ),
                    builder: (context, value, child) {
                    return Text( 
                      'ABOUT' , 
                      style: TextStyle( fontFamily: 'f1' , fontSize: w / 25, color: value  ) ,
                    );
                  }
                ),
                GestureDetector(
                  onTap: (){
                    
                      about.add( ATF( true ) ) ;

                  },
                  child: Container(
                    height: w / 15 ,
                    width: h / 15 ,
                    color: const Color.fromARGB(0, 255, 193, 7),
                  ),
                ) ,
              ],
            ),
          ),

        ) ,


        Positioned(
          right: w / 20 ,
          top: 0 ,
          child: RotatedBox(
            quarterTurns: 1 ,
            child: Stack(
              children: [

                
                
                
                TweenAnimationBuilder(
                    curve: Curves.decelerate ,
                    duration: Duration( milliseconds: 1000 ),
                    tween: ColorTween( begin: Colors.transparent ,end:  Colors.white ),
                    builder: (context, value, child) {
                    return Text( 
                      ' JECT' , 
                      style: TextStyle( fontFamily: 'f1' , fontSize: w / 25, color: value  ) ,
                    );
                  }
                ),
                GestureDetector(
                  onTap: (){
                    
                      project.add( PTF( true ) ) ;

                  },
                  child: Container(
                    height: w / 15 ,
                    width: h / 15 ,
                    color: const Color.fromARGB(0, 255, 193, 7),
                  ),
                ) ,
              ],
            ),
          ),

        ) ,

        // Positioned(
        //             top: 0 ,
        //             right :w / 20 ,
        //             // bottom: h / 15  ,
        //             // right: 1 ,
        //             child: Stack(
        //               children: [
                        
        //                 Container(
        //                   height:  h / 15 , 
        //                   width:    w / 15  ,
        //                   color: const Color.fromARGB(0, 255, 193, 7),
                          
        //                   child: FittedBox(child: Text( "ATION" , style: TextStyle(  color: const Color.fromARGB(255, 255, 255, 255) ,fontFamily: 'f1' ),))),
        //                   GestureDetector(
        //                   onTap: () {
        //                     print(123) ;
        //                   },
        //                   child: Container(
        //                     height:  h / 15 , 
        //                     width:    w / 15  ,
        //                     color: const Color.fromARGB(0, 255, 193, 7),
                            
        //                   ),

        //                 ) ,
                      
        //               ],
        //             )
        //           ) ,

        

        
        
        Positioned(
          left: w / 20 ,
          bottom: h / 4 ,
          child: RotatedBox(
            quarterTurns: 3 ,
            child: Stack(
              children: [
                
                
                TweenAnimationBuilder(
                    curve: Curves.decelerate ,
                    duration: Duration( milliseconds: 1000 ),
                    tween: ColorTween( begin: Colors.transparent ,end:  Colors.white ),
                    builder: (context, value, child) {
                    return Text( 
                      'RESUMEA' , 
                      style: TextStyle( fontFamily: 'f1' , fontSize: w / 25, color: value  ) ,
                    );
                  }
                ),
                GestureDetector(
                  onTap: () async {
                    final Uri url = Uri.parse('https://drive.google.com/file/d/1DmYngAvCjYkHk8tFaSZLN5AkT8a-Funs/view?usp=sharing');
                    if (await canLaunchUrl(url)) {
                      await launchUrl(url, mode: LaunchMode.externalApplication);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                  child: Container(
                    height: w / 15 ,
                    width: h / 15 ,
                    color: const Color.fromARGB(0, 255, 193, 7),
                  ),
                ) ,
              ],
            ),
          ),

        ) ,
        if ( h1 == h / 2  ) Align(
          alignment: Alignment( 0 , 0.96 ),
          child: Stack(
            children: [
              Container(
                height: h / 25 ,
                width: w /3  ,
                color: const Color.fromARGB(0, 208, 255, 0),
                child: Center(
                  child: TweenAnimationBuilder(
                    curve: Curves.decelerate ,
                    duration: Duration( milliseconds: 1000 ),
                    tween: ColorTween( begin: Colors.transparent ,end:  Colors.white ),
                    builder: (context, value, child) {
                      return Text( 
                        'EDUCATION' , 
                        style: TextStyle( fontFamily: 'f1' , fontSize: w / 25 , color: value ) ,
                      );
                    }
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {

                  

                    
                      edu.add( EdTF( true ) ) ;

                  // edu.add( EdTF( true ) ) ;
                  //  context.read<BlocEdTF>().add(EdTF(true));
                  // Navigator.push(
                  //   context,
                  //   PageRouteBuilder(
                  //     pageBuilder: (context, animation, secondaryAnimation) {
                  //       return E(h: l, w: r, t: t, b: b);
                  //     },
                  //     transitionsBuilder: (context, animation, secondaryAnimation, child) {
                  //       return SlideTransition(
                  //         position: Tween<Offset>(
                  //           begin: const Offset(0, 1), // Slide in from the bottom
                  //           end: Offset.zero,
                  //         ).animate(animation),
                  //         child: child,
                  //       );
                  //     },
                  //   ),
                  // );

                  // Navigator.push( context , MaterialPageRoute(builder: (context) => E( h: h , w:w ,  t:t , b:b )) ) ;
                },
                child: Container(
                height: h / 25 ,
                width: w /3  ,
                  color: const Color.fromARGB(0, 255, 193, 7),
                ),
              ) ,
            ],
          ),
        ) ,
        Positioned(
          top: 0,
          left : h / 15 ,
          right: h / 15 ,
          child: TweenAnimationBuilder(
            curve: Curves.decelerate,
            tween: Tween < double > ( begin: 0 , end:  h / 2.0835 - h / 10 ) ,
            duration: Duration( milliseconds: 800 ),
            builder: (context, s, child) {
              double h2 = s ;
              return Container(
                height: s,
                width: w / 1.2 ,
                decoration: BoxDecoration(
                  border: Border(
                    top : BorderSide(
                      width: 2 , 
                      color:  const Color.fromARGB(0, 0, 0, 0) ,
                    ) ,
                    bottom : BorderSide(
                      width: 2 , 
                      color:  const Color.fromARGB(255, 255, 255, 255) ,
                    ) ,
                    right : BorderSide(
                      width: 2 , 
                      color: const Color.fromARGB(255, 255, 255, 255) ,
                    ) ,
                    left : BorderSide(
                      width: 2 , 
                      color: const Color.fromARGB(255, 255, 255, 255) ,
                    ) ,
                  )
                ),
                child: ( h2 ==  h / 2.0835 - h / 10  ) ? Stack(
                  children: [
                    Align(
                      alignment: Alignment( 0 ,  0.7 ),
                      child: TweenAnimationBuilder(
                        curve: Curves.decelerate ,
                        duration: Duration( milliseconds: 700 ),
                        tween: ColorTween( begin: Colors.transparent ,end:  const Color.fromARGB(255, 255, 255, 255) ),
                        builder: (context, value, child) {
                          return Text( 
                            "GIRIDHARAN RAVI" , 
                            style: TextStyle(
                              fontFamily: 'f1',
                              fontSize: w / 15 ,
                              color: value 
                            ),
                          );
                        }
                      ),
                    ) ,
                    Align(
                      alignment: Alignment( 0 ,  0.9 ),
                      child: TweenAnimationBuilder(
                        curve: Curves.decelerate ,
                        duration: Duration( milliseconds: 700 ),
                        tween: ColorTween( begin: Colors.transparent ,end:  const Color.fromARGB(255, 255, 255, 255) ),
                        builder: (context, value, child) {
                          return Text( 
                            "Software Engineer" , 
                            style: TextStyle(
                              letterSpacing: 0,
                              fontFamily: 'f1',
                              fontSize: w / 18,
                              color: value
                            ),
                          );
                        }
                      ),
                    ) ,
                    Align(
                      alignment: Alignment( 0 ,  - 0.86 ),
                      child: Container(
                        height: ( h / 2.0835 - h / 15 ) / 1.7 ,
                        width: w / 1.4 ,
                        // height: 200 ,
                        // width : 200 ,
                        decoration: BoxDecoration(
                          // color: Colors.amber,
                          image: DecorationImage(
                            image:AssetImage("assets/image/photo2.png" )
                            ,fit: BoxFit.contain
                          )
                        ), 
                      )
                    ) ,
                  ],
                ) : null ,
              ) ;
            },
          ),
        ),

        BlocBuilder < BlocWL , double > (
          builder: (context, state) {
            return Positioned(
              left:  w / 30  ,
              bottom : h / 2.5   ,
              child:TweenAnimationBuilder(
                curve: Curves.decelerate, //w / 7
                tween: Tween < double > ( begin:  0 , end: h / 2 - h / 2.5 - 1 ),
                duration: Duration(milliseconds: 1000 ),
                builder: ( context , s , child ) {
                  wl.add( WL(s) ) ;
                  return Container(
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
                  );
                  
                  
                  //  Container(
                  //   height: s ,
                  //   width: 1.5 ,
                  //   color: const Color.fromARGB(255, 255, 255, 255) ,
                  // );
                }
              ) ,
            );
          },
        )


        
      ],
    ) ;
}


dynamic top ( h , w , h2  ) {
  return Positioned(
    bottom: 1,
    left : h / 15 ,
    right: h / 15 ,
    child: TweenAnimationBuilder(
      curve: Curves.decelerate,//begin: 0 , end:  w / 2.0835 - w / 8 
      tween: Tween < double > ( begin: 0 , end:  h / 2.0835 - h / 10 ) ,
      duration: Duration( milliseconds: 800 ),
      builder: (context, s, child) {
        h2 = s ;
        return Container(
          height: s,
          decoration: BoxDecoration(
            border: Border(
              top : BorderSide(
                width: 2, 
                color: const Color.fromARGB(255, 0, 0, 0) ,
              ) ,
              bottom : BorderSide(
                width: 0 , 
                color:  const Color.fromARGB(0, 0, 0, 0) ,
              ) ,
              right : BorderSide(
                width: 2 , 
                color:  Colors.black ,
              ) ,
              left : BorderSide(
                width: 2 , 
                color:  Colors.black ,
              ) ,
            )
          ),
          child: ( h2 ==  h / 2.0835 - h / 10  ) ? Center(
            child: SingleChildScrollView(
              child: Column(
                children: [ 
                  // SizedBox(  height:h / 15  ) ,
                  Row(
                    children: [
                      SizedBox(  width:w / 15  ) ,
                      TweenAnimationBuilder(
                        curve: Curves.decelerate ,
                        duration: Duration( milliseconds: 700 ),
                        tween: ColorTween( begin: Colors.transparent ,end:  Colors.black ),
                        builder: (context, value, child) {
                          return Text(  
                            "HI..," , 
                            style: TextStyle(
                              letterSpacing: 0,
                              fontFamily: 'f1',
                              fontSize: w / 13 ,
                              color: value
                            ),
                          );
                        }
                      ), 
                    ],
                  ) ,
                  SizedBox(  height:h / 50  ) ,
                  Row(
                    children: [
                      SizedBox(  width :w / 15  ) ,
                      TweenAnimationBuilder(
                        curve: Curves.decelerate ,
                        duration: Duration( milliseconds: 700 ),
                        tween: ColorTween( begin: Colors.transparent ,end:  Colors.black ),
                        builder: (context, value, child) {
                          return Text(  
                            "I'm GIRI" , 
                            style: TextStyle(
                              letterSpacing: 0,
                              fontFamily: 'f1',
                              fontSize: w / 15 ,
                              color: value
                            ),
                          );
                        }
                      ),
                    ],
                  ) , 
                  SizedBox(  height:h / 50  ) ,
                  Row(
                    children: [
                      SizedBox(  width :w / 15  ) ,
                      Expanded(
                        child: TweenAnimationBuilder(
                        curve: Curves.decelerate ,
                        duration: Duration( milliseconds: 700 ),
                        tween: ColorTween( begin: Colors.transparent ,end:  Colors.black ),
                        builder: (context, value, child) {
                            return Text(  
                              "Software Engineer with a Bachelor's degree in Engineering, having Strong foundation in software development, mobile and backend technologies, and database management" , 
                              style: TextStyle(
                                letterSpacing: 0,
                                fontFamily: 'f1',
                                fontSize: w / 25 ,
                                color: value
                              ),
                            );
                          }
                        ),
                      ),
                      SizedBox(  width :w / 20  ) ,
                    ],
                  ) ,
                  
                ],
              ),
            ),
          ) : 
          null ,
        ) ;
      },
    ),
  ) ;
}


// dynamic icon( context , h , w , bloc1 , git , phone , mail , leetcode , linkedin , h2 ) {
  

// }


class icon extends StatelessWidget {
  dynamic  h , w , bloc1 , git , phone , mail , leetcode , linkedin , h2 , wl ;
  icon({
    super.key , 
    required this.wl ,
    required this .h , 
    required this.w , 
    required this.bloc1 , 
    required this.git , 
    required this.phone , 
    required this.mail , 
    required this.leetcode , 
    required this.linkedin , 
    required this.h2 });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left:  w / 30  ,
      bottom: 1 ,
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
                  
          if ( context.watch < BlocLeetcode > ().state > w / 22 ) SizedBox( height: w / 20 , ) ,
          if ( context.watch < BlocLeetcode > ().state > w / 22 ) BlocBuilder < BlocMail , double >(
            builder: (context, state)  {
              return TweenAnimationBuilder(
                tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
                curve: Curves.easeInToLinear ,
                duration: Duration( milliseconds: 600 ),
                builder: (context, r, child) {
                  mail.add ( Mail(r) ) ;
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
                        image: DecorationImage(image: AssetImage("assets/image/mail.png")  )
                      ),
                    ),
                  ) ;
                }
              )  ;
            }
          ),
                  
          if ( context.watch < BlocLinkedIn > ().state > w / 22 ) SizedBox( height: min ( h , w ) / 20 , ) ,
          if ( context.watch < BlocLinkedIn > ().state > w / 22 ) BlocBuilder < BlocLeetcode , double >(
            builder: (context, state)  {
              return TweenAnimationBuilder(
                tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
                curve: Curves.easeInToLinear ,
                duration: Duration( milliseconds: 600 ),
                builder: (context, r, child) {
                  leetcode.add ( Leetcode(r) ) ;
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
                        image: DecorationImage(image: AssetImage("assets/image/leetcode.png")  )
                      ),
                    ),
                  );
                }
              )  ;
            }
          ),
                  
          if ( context.watch < BlocGit > ().state > w / 22 ) SizedBox( height: min ( h , w ) / 20 , ) ,
          if ( context.watch < BlocGit > ().state > w / 22 ) BlocBuilder < BlocLinkedIn , double >(
            builder: (context, state)  {
              return TweenAnimationBuilder(
                curve: Curves.easeInToLinear ,
                tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
                duration: Duration( milliseconds: 600 ),
                builder: (context, r, child) {
                  linkedin.add( Linkedin(r)  ) ;
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
                        image: DecorationImage(image: AssetImage("assets/image/linkedinB.png"))
                      ),
                    ),
                  );
                }
              );
            }
          )  ,
                  
          if ( context.watch < BlocPhone > ().state > w / 22 ) SizedBox( height: min ( h , w ) / 20 , ) ,
          if ( context.watch < BlocPhone > ().state > w / 22 ) BlocBuilder < BlocGit , double >(
            builder: (context, state)  {
              return TweenAnimationBuilder(
                tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
                curve: Curves.easeInToLinear ,
                duration: Duration( milliseconds: 600 ),
                builder: (context, r, child) {
                  git.add ( Git(r) ) ;
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
                        image: DecorationImage(image: AssetImage("assets/image/git.png") )
                      ),
                    ),
                  );
                }
              )  ;
            }
          ),
          
          
          if ( context.watch<BlocOfIconView>().state == w / 6 )  SizedBox( height: min ( h , w ) / 20 , ) ,
          if (context.watch<BlocOfIconView>().state == w / 6 ) BlocBuilder < BlocPhone , double >(
            builder: (context, state)  {
              return TweenAnimationBuilder(
                curve: Curves.easeInToLinear ,
                tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
                duration: Duration( milliseconds: 600 ),
                builder: (context, r, child) {
                  phone.add ( Phone(r) ) ;
                  return GestureDetector(
                    onTap : () => makePhoneCall() ,
                    child: Container(
                      height: r ,
                      width: r ,
                      decoration: BoxDecoration(
                      // color: Colors.black ,
                        image: DecorationImage(image: AssetImage("assets/image/p1.png"))
                      ),
                    ),
                  );
                }
              ) ;
            }
          )  ,
          if ( context.watch<BlocOfIconView>().state == w / 6  )SizedBox( height: min ( h , w ) / 20 , ) ,
          if ( context.watch < BlocWL > ().state ==  h / 2 - h / 2.5 - 1 )BlocBuilder < BlocOfIconView , double >(
            builder: (context, state)  {
              return TweenAnimationBuilder(
                      curve: Curves.decelerate,
                      tween: Tween < double > ( begin:  0 , end: min ( h , w ) / 6 ,),
                      duration: Duration(milliseconds: 1000 ),
                      builder: ( context , s , child ) {
                        bloc1.add ( IconsView(s) ) ;
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
                                color: Colors.black ,
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