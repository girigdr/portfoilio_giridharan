


import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilio_giridharan/BLOC/lightTheme.dart';
import 'package:portfoilio_giridharan/LINKS/Link.dart';
import 'package:url_launcher/url_launcher.dart';

class L_M extends StatefulWidget {
  double t , b , l , r ;
   L_M({super.key , required this.t , required this .b  , required this.l , required this .r  });

  @override
  State<L_M> createState() => _L_MState();
}

class _L_MState extends State<L_M>  {



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



    return LM( h , w , h2 , bloc1 , git , phone , mail , leetcode , linkedin ) ;
  }
}




dynamic right( h , w , h1) {
  return  Positioned(
    left: 0,
    top : w / 17 ,
    bottom : w / 17 ,
    child: TweenAnimationBuilder(
      curve: Curves.decelerate,
      tween: Tween < double > ( begin: 0 , end:  w / 2.0835 - w / 10 ) ,
      duration: Duration( milliseconds: 800 ),
      builder: (context, s, child) {
        double h2 = s ;
        return Container(
          height:  h / 1.2 ,
          width: s ,
          decoration: BoxDecoration(
            border: Border(
              top : BorderSide(
                width: 2 , 
                color:  const Color.fromARGB(255, 255, 255, 255) ,
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
                color: const Color.fromARGB(0, 255, 255, 255) ,
              ) ,
            )
          ),
          child: ( h2 ==  w / 2.0835 - w / 10  ) ? Stack(
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
                        fontSize: h / 15 ,
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
                        fontSize: h / 18,
                        color: value
                      ),
                    );
                  }
                ),
              ) ,
              Align(
                alignment: Alignment( 0 ,  - 0.57 ),
                child: Container(
                  height: h / 2.5 ,
                  // ( h / 2.0835 - h / 15 ) / 1.7 ,
                  width: h / 2.5 ,
                  decoration: BoxDecoration(
                    // color: Colors.amber,
                    image: DecorationImage(
                      image:AssetImage("assets/image/photo1.png")
                    )
                  ), 
                )
              ) ,
            ],
          ) : null ,
        ) ;
      },
    ),
  ) ;
}


//top
dynamic left ( h , w , h2 ) {
  return Positioned(
    right: 0,
    top : w / 17 ,
    bottom : w / 17 ,
    child: TweenAnimationBuilder(
      curve: Curves.decelerate,//begin: 0 , end:  w / 2.0835 - w / 8 
      tween: Tween < double > ( begin: 0 , end:  w / 2.0835 - w / 10 ) ,
      duration: Duration( milliseconds: 800 ),
      builder: (context, s, child) {
        h2 = s ;
        return Container(
          width: s,
          decoration: BoxDecoration(
            border: Border(
              top : BorderSide(
                width: 2, 
                color: const Color.fromARGB(255, 0, 0, 0) ,
              ) ,
              bottom : BorderSide(
                width: 2 , 
                color:  const Color.fromARGB(255, 0, 0, 0) ,
              ) ,
              right : BorderSide(
                width: 2 , 
                color:  const Color.fromARGB(0, 0, 0, 0) ,
              ) ,
              left : BorderSide(
                width: 2 , 
                color:  const Color.fromARGB(255, 0, 0, 0) ,
              ) ,
            )
          ),
          child: ( h2 ==  w / 2.0835 - w / 10  ) ? Center(
            child: SingleChildScrollView(
              child: Column(
                children: [ 
                  // SizedBox(  height:h / 15  ) ,
                  Row(
                    children: [
                      SizedBox(  width: w / 15  ) ,
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
                              fontSize: h / 13 ,
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
                              fontSize: h / 15 ,
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
                                fontSize: h / 25 ,
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


dynamic LM ( h , w , h2 , bloc1 , git , phone , mail , leetcode , linkedin  ) {
  h2 = 0;
  bloc1.add(IconsView(0)) ;
  git.add(Git(0)) ;
  phone.add( Phone(0)) ;
  mail.add(Mail(0)) ;
  leetcode.add( Leetcode(0)) ;
  linkedin.add(Linkedin(0)) ;
  return Stack(
      children: [
        Positioned(
          left: 0,
          child: TweenAnimationBuilder(
            tween: Tween < double > ( begin:  0 ,  end :  w / 2 ), 
            duration: Duration( milliseconds: 600 ), 
            builder: (context, value, child) {
              double h1 = value ; 
              return Container(
                height: h ,
                width: value ,
                color: Color.fromARGB(255, 255, 255, 255) ,
                child: ( h1 == w / 2 ) ? Stack(
                  children: [
                    left ( h , w , h2 ) ,

                    Positioned(
                      right: 0 ,
                      bottom: h / 40 ,
                      // bottom: h / 15  ,
                      // right: 1 ,
                      child: Stack(
                        children: [
                          
                          Container(
                            height:  h / 15 , 
                            width:    w / 15  ,
                            color: const Color.fromARGB(0, 0, 255, 115),
                            
                            child: FittedBox(
                              child: Text( " EDUC" , style: TextStyle(  color: const Color.fromARGB(255, 0, 0, 0) ,fontFamily: 'f1' ,),))
                            ),
                            GestureDetector(
                              onTap: () {
                                print(123) ;
                              },
                              child: Container(
                                height:  h / 15 , 
                                width:    w / 15  ,
                                color: const Color.fromARGB(0, 255, 193, 7),
                                
                              ),

                            ) ,
                        
                        
                        ],
                      )
                    ) ,



                    Positioned(
                      left: w / 25 ,
                      bottom: h / 2.5  ,
                      // alignment: Alignment.centerLeft,
                      child: RotatedBox(
                        quarterTurns: 3 ,
                        child: Stack(
                          children: [
                            
                            TweenAnimationBuilder(
                              curve: Curves.decelerate ,
                              duration: Duration( milliseconds: 1000 ),
                              tween: ColorTween( begin: Colors.transparent ,end:  const Color.fromARGB(255, 0, 0, 0) ),
                              builder: (context, value, child) {
                              return Container(
                                height:  w / 20 , 
                                width:    w / 12  ,
                                color: const Color.fromARGB(0, 0, 255, 115),
                                
                                child: FittedBox(
                                  child: Text( 
                                        'RESUMEA' , 
                                        style: TextStyle( fontFamily: 'f1' , color: value  ) ,
                                      )
                                      )
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
                                    height:  w / 20 , 
                                    width:    w / 12  ,
                                    color: const Color.fromARGB(0, 255, 193, 7),
                                  ),
                                ) ,
                          ],
                        ),
                      ),

                    ) ,  


                  ],
                ) : null 
              );
            },
          ),
        ) ,
        Positioned(
          right: 0 ,
          child: TweenAnimationBuilder(
            tween: Tween < double > ( begin:  0 ,  end :  w / 2 ), 
            duration: Duration( milliseconds: 600 ), 
            builder: (context, value, child) {
              double z = value ;
              return Container(
                height: h ,
                width: value ,
                color: Color.fromARGB(255, 0, 0, 0) ,
                child: ( z == w / 2 ) ? Stack( children: [
                  right  ( h , w , h2 ) ,
                  iconLM( h : h , w : w , bloc1 : bloc1 , git : git , phone : phone , mail : mail , leetcode : leetcode , linkedin: linkedin , h2 : h2 ),
                  Positioned(
                    left: 0 ,
                    bottom: h / 40 ,
                    // bottom: h / 15  ,
                    // right: 1 ,
                    child: Stack(
                      children: [
                        
                        Container(
                          height:  h / 15 , 
                          width:    w / 15  ,
                          color: const Color.fromARGB(0, 255, 193, 7),
                          
                          child: FittedBox(child: Text( "ATION" , style: TextStyle(  color: const Color.fromARGB(255, 255, 255, 255) ,fontFamily: 'f1' ),))),
                          GestureDetector(
                          onTap: () {
                            print(123) ;
                          },
                          child: Container(
                            height:  h / 15 , 
                            width:    w / 15  ,
                            color: const Color.fromARGB(0, 255, 193, 7),
                            
                          ),

                        ) ,
                      
                      ],
                    )
                  ) ,
                ],)
                     : null ,
              );
            },
          ),
        ) ,
        
      ],
    );
}








class iconLM extends StatelessWidget {
  dynamic  h , w , bloc1 , git , phone , mail , leetcode , linkedin , h2 ;
  iconLM({
    super.key , 
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
      right:  w / 23  ,
      bottom: h / 40    ,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center ,
        children: [
                  
                  
          if ( context.watch < BlocMail > ().state == h / 20 ) SizedBox( height: h / 30 , ) ,
          if ( context.watch < BlocMail > ().state == h / 20 ) TweenAnimationBuilder(
            curve: Curves.decelerate,
            tween: Tween < double > ( begin:  0 , end: h / 10 ),
            duration: Duration(milliseconds: 1000 ),
            builder: ( context , s , child ) {
              return Container(
                height: s ,
                width: 1.5 ,
                color: const Color.fromARGB(255, 255, 255, 255) ,
              );
            }
          ) ,
                  
          if ( context.watch < BlocLeetcode > ().state == h / 20 ) SizedBox( height: h / 20 , ) ,
          if ( context.watch < BlocLeetcode > ().state == h / 20 ) BlocBuilder < BlocMail , double >(
            builder: (context, state)  {
              return TweenAnimationBuilder(
                tween: Tween < double > ( begin:  0 , end: h / 20 ) ,
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
                        image: DecorationImage(image: AssetImage("assets/image/mail1.png")  )
                      ),
                    ),
                  ) ;
                }
              )  ;
            }
          ),
                  
          if ( context.watch < BlocLinkedIn > ().state == h / 20 ) SizedBox( height:h / 20 , ) ,
          if ( context.watch < BlocLinkedIn > ().state == h / 20 ) BlocBuilder < BlocLeetcode , double >(
            builder: (context, state)  {
              return TweenAnimationBuilder(
                tween: Tween < double > ( begin:  0 , end: h / 20 ) ,
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
                        image: DecorationImage(image: AssetImage("assets/image/leetcodeW.png")  )
                      ),
                    ),
                  );
                }
              )  ;
            }
          ),
                  
          if ( context.watch < BlocGit > ().state == h / 20 ) SizedBox( height:  h  / 20 , ) ,
          if ( context.watch < BlocGit > ().state == h / 20 ) BlocBuilder < BlocLinkedIn , double >(
            builder: (context, state)  {
              return TweenAnimationBuilder(
                curve: Curves.easeInToLinear ,
                tween: Tween < double > ( begin:  0 , end: h / 20 ) ,
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
                        image: DecorationImage(image: AssetImage("assets/image/link.png"))
                      ),
                    ),
                  );
                }
              );
            }
          )  ,
                  
          if ( context.watch < BlocPhone > ().state == h / 20 ) SizedBox( height:  h / 20 , ) ,
          if ( context.watch < BlocPhone > ().state == h / 20 ) BlocBuilder < BlocGit , double >(
            builder: (context, state)  {
              return TweenAnimationBuilder(
                tween: Tween < double > ( begin:  0 , end: h / 20 ) ,
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
                        image: DecorationImage(image: AssetImage("assets/image/gitW.png") )
                      ),
                    ),
                  );
                }
              )  ;
            }
          ),
          
          
          if ( bloc1.state == h / 6 )  SizedBox( height: h  / 20 , ) ,
          if (context.watch<BlocOfIconView>().state == h / 6 ) BlocBuilder < BlocPhone , double >(
            builder: (context, state)  {
              return TweenAnimationBuilder(
                curve: Curves.easeInToLinear ,
                tween: Tween < double > ( begin:  0 , end: h / 20 ) ,
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
                        image: DecorationImage(image: AssetImage("assets/image/p2.png"))
                      ),
                    ),
                  );
                }
              ) ;
            }
          )  ,
          SizedBox( height: h  / 20 , ) ,
          BlocBuilder < BlocOfIconView , double >(
            builder: (context, state)  {
              return TweenAnimationBuilder(
                      curve: Curves.decelerate,
                      tween: Tween < double > ( begin:  0 , end:  h / 6 ,),
                      duration: Duration(milliseconds: 1000 ),
                      builder: ( context , s , child ) {
                        bloc1.add ( IconsView(s) ) ;
                        return Align(
                          alignment: Alignment.centerRight ,
                          child: Container(
                            height: s ,
                            width: h / 20 ,
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