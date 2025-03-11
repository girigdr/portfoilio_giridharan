


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';
import '../BLOC/lightTheme.dart';
import '../LINKS/Link.dart';


class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {


  bool _hasCallSupport = false;
  Future<void>? _launched;

  @override
  void initState() {
    super.initState();
    // Check for phone call support.
    canLaunchUrl(Uri(scheme: 'tel', path: '123')).then((bool result) {
      setState(() {
        _hasCallSupport = result;
      });
    });
  }


  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of( context ).size.height ;
    double w = MediaQuery.of( context ).size.width ;
    final bloc1 = BlocProvider.of < BlocOfIconView >( context ) ;
    final git = BlocProvider.of < BlocGit >( context ) ;
    final phone = BlocProvider.of < BlocPhone >( context ) ;
    final mail = BlocProvider.of < BlocMail >( context ) ;
    final leetcode = BlocProvider.of < BlocLeetcode >( context ) ;
    final linkedin =  BlocProvider.of < BlocLinkedIn >( context ) ;
    double h2 = 0 ;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: TweenAnimationBuilder(
              // key: ValueKey(bloc.state), 
              curve: Curves.decelerate,
              tween: Tween < double > ( begin: 0 , end: h / 2.0835 ), 
              duration: Duration( milliseconds: 800 ), 
              builder: (context, size, child ) {
                double h1 = size ; 
                return Container(
                  height: size ,
                  width: w ,
                  decoration: BoxDecoration(
                    color : Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: ( h1 == h / 2.0835  ) ? 
                    Stack(
                      children: [



                        //  ------------     icons and links     ---------------
                        Positioned(
                          left:  w / 30   ,
                          bottom: 5   ,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center ,
                            children: [
                                      
                                      
                              if ( context.watch < BlocMail > ().state > w / 22 ) SizedBox( height: w / 30 , ) ,
                              if ( context.watch < BlocMail > ().state > w / 22 ) TweenAnimationBuilder(
                                curve: Curves.decelerate,
                                tween: Tween < double > ( begin:  0 , end: w / 10 ),
                                duration: Duration(milliseconds: 1000 ),
                                builder: ( context , s , child ) {
                                  return Container(
                                    height: s ,
                                    width: 1.5 ,
                                    color: Colors.black ,
                                  );
                                }
                              ) ,
                                      
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
                                      
                              if ( context.watch < BlocLinkedIn > ().state > w / 22 ) SizedBox( height: w / 20 , ) ,
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
                                      
                              if ( context.watch < BlocGit > ().state > w / 22 ) SizedBox( height: w / 20 , ) ,
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
                                            image: DecorationImage(image: AssetImage("assets/image/linkedin.png"))
                                          ),
                                        ),
                                      );
                                    }
                                  );
                                }
                              )  ,
                                      
                              if ( context.watch < BlocPhone > ().state > w / 22 ) SizedBox( height: w / 20 , ) ,
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
                              
                              
                              if ( bloc1.state == w / 6 )  SizedBox( height: w / 20 , ) ,
                              if (context.watch<BlocOfIconView>().state == w / 6 ) BlocBuilder < BlocPhone , double >(
                                builder: (context, state)  {
                                  return TweenAnimationBuilder(
                                    curve: Curves.easeInToLinear ,
                                    tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
                                    duration: Duration( milliseconds: 600 ),
                                    builder: (context, r, child) {
                                      phone.add ( Phone(r) ) ;
                                      return GestureDetector(
                                        onTap : _hasCallSupport
                                          ? () => setState(() {
                                                _launched = makePhoneCall();
                                              })
                                          : null,
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
                              SizedBox( height: w / 20 , ) ,
                              BlocBuilder < BlocOfIconView , double >(
                                builder: (context, state)  {
                                  return TweenAnimationBuilder(
                                          curve: Curves.decelerate,
                                          tween: Tween < double > ( begin:  0 , end: w / 6 ,),
                                          duration: Duration(milliseconds: 1000 ),
                                          builder: ( context , s , child ) {
                                            bloc1.add ( IconsView(s) ) ;
                                            return Align(
                                              alignment: Alignment.centerRight ,
                                              child: Container(
                                                height: s ,
                                                width: w / 20 ,
                                                color: const Color.fromARGB(0, 0, 0, 0) ,
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
                        )  ,





                        Positioned(
                          bottom: 0,
                          left : h / 17 ,
                          right: h / 17 ,
                          child: TweenAnimationBuilder(
                            curve: Curves.linear,
                            tween: Tween < double > ( begin: 0 , end:  h / 2.0835 - h / 10 ) ,
                            duration: Duration( milliseconds: 600 ),
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
                                            Text(  
                                              "HI..," , 
                                              style: TextStyle(
                                                letterSpacing: 0,
                                                fontFamily: 'f1',
                                                fontSize: w / 15 ,
                                                color: Colors.black
                                              ),
                                            ), 
                                          ],
                                        ) ,
                                        SizedBox(  height:h / 50  ) ,
                                        Row(
                                          children: [
                                            SizedBox(  width :w / 15  ) ,
                                            Text(  
                                              "I'm GIRI" , 
                                              style: TextStyle(
                                                letterSpacing: 0,
                                                fontFamily: 'f1',
                                                fontSize: w / 20 ,
                                                color: Colors.black
                                              ),
                                            ),
                                          ],
                                        ) , 
                                        SizedBox(  height:h / 50  ) ,
                                        Row(
                                          children: [
                                            SizedBox(  width :w / 15  ) ,
                                            Expanded(
                                              child: Text(  
                                                "Software Engineer with a Bachelor's degree in Engineering, having Strong foundation in software development, mobile and backend technologies, and database management" , 
                                                style: TextStyle(
                                                  letterSpacing: 0,
                                                  fontFamily: 'f1',
                                                  fontSize: w / 25 ,
                                                  color: Colors.black
                                                ),
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
                        ),
                      ],
                    ) : null ,
                ) ;
              },
            ),
          ) ,
          Positioned(
            bottom: 0 ,
            child: TweenAnimationBuilder(
              // key: ValueKey(bloc.state), 
              curve: Curves.decelerate,
              tween: Tween < double > ( begin: 0 , end: h / 2.0835 ), 
              duration: Duration( milliseconds: 800 ), 
              builder: (context, size, child ) {
                double h1 = size ; 
                return Container(
                  height: size ,
                  width: w ,
                  decoration: BoxDecoration(
                    color :  Color.fromARGB(255, 0, 0, 0),
                  ),
        
                  child: ( h1 == h / 2.0835  ) ? 
                    Stack(
                      children: [
                        Positioned(
                          left: w / 20 ,
                          bottom: h / 4 ,
                          child: RotatedBox(
                            quarterTurns: 3 ,
                            child: Stack(
                              children: [
                                
                                Text( 
                                  'RESUMEA' , 
                                  style: TextStyle( fontFamily: 'f1' , fontSize: w / 25 ) ,
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
                        Positioned(
                          top: 0,
                          left : h / 17 ,
                          right: h / 17 ,
                          child: TweenAnimationBuilder(
                            curve: Curves.linear,
                            tween: Tween < double > ( begin: 0 , end:  h / 2.0835 - h / 10 ) ,
                            duration: Duration( milliseconds: 600 ),
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
                                      child: Text( 
                                        "GIRIDHARAN RAVI" , 
                                        style: TextStyle(
                                          fontFamily: 'f1',
                                          fontSize: w / 15
                                        ),
                                      ),
                                    ) ,
                                    Align(
                                      alignment: Alignment( 0 ,  0.9 ),
                                      child: Text( 
                                        "Software Engineer" , 
                                        style: TextStyle(
                                          letterSpacing: 0,
                                          fontFamily: 'f1',
                                          fontSize: w / 18
                                        ),
                                      ),
                                    ) ,
                                    Align(
                                      alignment: Alignment( 0 ,  - 0.86 ),
                                      child: Container(
                                        height: ( h / 2.0835 - h / 15 ) / 1.7 ,
                                        width: w / 1.4 ,
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
                        ),
                      ],
                    ) : null ,
                ) ;
              },
            ),
          ) ,
          Align(
            alignment: Alignment( 0, 0.96 ),
            child:  Text( 
              "EDUCATION" , 
              style: TextStyle(
                letterSpacing: 0,
                fontFamily: 'f2',
                fontSize: w / 25
              ),
            ),
          )
        ],
      ),
    );
  }
}








/*
          Positioned(
            right:  w / 30   ,
            top: h / 30   ,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center ,
              children: [
                        
                        
                if ( context.watch < BlocMail > ().state > w / 22 ) SizedBox( width: w / 30 , ) ,
                if ( context.watch < BlocMail > ().state > w / 22 ) TweenAnimationBuilder(
                  curve: Curves.decelerate,
                  tween: Tween < double > ( begin:  0 , end: w / 8 ),
                  duration: Duration(milliseconds: 1000 ),
                  builder: ( context , s , child ) {
                    return Container(
                      height: 1.5 ,
                      width: s ,
                      color: Colors.black ,
                    );
                  }
                ) ,
                        
                if ( context.watch < BlocLeetcode > ().state > w / 22 ) SizedBox( width: w / 20 , ) ,
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
                        
                if ( context.watch < BlocLinkedIn > ().state > w / 22 ) SizedBox( width: w / 20 , ) ,
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
                        
                if ( context.watch < BlocGit > ().state > w / 22 ) SizedBox( width: w / 20 , ) ,
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
                              image: DecorationImage(image: AssetImage("assets/image/linkedin.png"))
                            ),
                          ),
                        );
                      }
                    );
                  }
                )  ,
                        
                if ( context.watch < BlocPhone > ().state > w / 22 ) SizedBox( width: w / 20 , ) ,
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
                
                
                if ( bloc1.state == w / 4 )  SizedBox( width: w / 20 , ) ,
                if (context.watch<BlocOfIconView>().state == w / 4 ) BlocBuilder < BlocPhone , double >(
                  builder: (context, state)  {
                    return TweenAnimationBuilder(
                      curve: Curves.easeInToLinear ,
                      tween: Tween < double > ( begin:  0 , end: w / 20 ) ,
                      duration: Duration( milliseconds: 600 ),
                      builder: (context, r, child) {
                        phone.add ( Phone(r) ) ;
                        return GestureDetector(
                          onTap : _hasCallSupport
                            ? () => setState(() {
                                  _launched = makePhoneCall();
                                })
                            : null,
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
                SizedBox( width: w / 20 , ) ,
                BlocBuilder < BlocOfIconView , double >(
                  builder: (context, state)  {
                    return TweenAnimationBuilder(
                      curve: Curves.decelerate,
                      tween: Tween < double > ( begin:  0 , end: w / 4 ,),
                      duration: Duration(milliseconds: 1000 ),
                      builder: ( context , s , child ) {
                        bloc1.add ( IconsView(s) ) ;
                        return Align(
                          alignment: Alignment.centerRight ,
                          child: Container(
                            height: w / 20  ,
                            width: s ,
                            color: const Color.fromARGB(0, 0, 0, 0) ,
                            child: Center(
                              child: Container(
                                height: 1.5,
                                width: s ,
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
          )  ,
          */