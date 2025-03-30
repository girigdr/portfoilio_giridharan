
import 'dart:math';

import 'package:flutter/Material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilio_giridharan/BLOC/AboutIcon.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:portfoilio_giridharan/LINKS/Link.dart';
import 'package:url_launcher/url_launcher.dart';

class Projectlandscape extends StatefulWidget {
  const Projectlandscape({super.key});

  @override
  State<Projectlandscape> createState() => _ProjectlandscapeState();
}

class _ProjectlandscapeState extends State<Projectlandscape> {
  @override
  Widget build(BuildContext context) {

    PageController pc = PageController( initialPage:  0 ) ;
    FlipCardController fc = FlipCardController() ;

    final mediaQuery = MediaQuery.of(context);
        final t = mediaQuery.padding.top;
        final b = mediaQuery.padding.bottom;
        final l = mediaQuery.padding.left;
        final r = mediaQuery.padding.right;
    final hi = MediaQuery.of( context ).size.width   ;
    final wi = MediaQuery.of( context ).size.height  ;



    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black ,
        body: Stack(
          children: [
            Padding(
                padding: const EdgeInsets.all(1.0),
                child: BubbleScreen(),
              ) ,
               


              Align(
                        alignment: Alignment( 0.7, -0.7 ),
                        child: Container(
                        width: hi / 5 ,
                        height: wi / 1.7 ,
                          color: const Color.fromARGB(0, 235, 175, 9) ,
                          child: RotatedBox(
                            quarterTurns: 0,
                            child: FittedBox(
                              child: Column(
                                children: [
                                  Text(
                                    'P',
                                    style: TextStyle(
                                      fontFamily: 'f1',
                                      color: const Color.fromARGB(110, 255, 255, 255)
                                    ),
                                  ),
                                  Text(
                                    'R',
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
                                    'J',
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
                                    'C',
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
                                ],
                              ),
                            ),
                          ),
                        ),
                      ) ,
      
                      
                     Align(
                      alignment: Alignment( -0.7, 0.7 ),
                      child: Container(
                        width: hi / 5 ,
                        height: wi / 1.7 ,
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
                                  
                                ],
                              ),
                            ),
                          ),
                        ),
                    ),

                   PageView.builder(
                itemCount: array.length,
                controller: pc ,
                itemBuilder: (context, index) {
                  
                  return Align(
                    alignment: Alignment(0, 0.6),
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
                    FlipCard(
                      controller: fc,
                      rotateSide: RotateSide.bottom ,
                      onTapFlipping : true ,
                      frontWidget: Container(
                        height: hi / 3.5 ,
                        width: wi / 1.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(90) , bottomRight: Radius.circular(90) ),
                          color: const Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(
                            width: 1 , 
                            color: const Color.fromARGB(255, 255, 255, 255),
                          )
                        ),  
                                        
                            child: Padding(
                                padding: EdgeInsets.only( top: wi / 10 , bottom: wi / 10 , left: wi / 25 , right: wi / 25 ),
                                child: SingleChildScrollView(
                                  child : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Text( "GIRI ")
                                      SizedBox( height: hi / 40 ,),
                                      Wrap(
                                        children: [
                                          TweenAnimationBuilder(
                                            tween: Tween<double>(begin: 1, end: 0 ),
                                            duration: Duration(milliseconds: 500 ),
                                            builder: (context, value, child) {
                                              return Align(
                                                alignment: Alignment( value , 0 ),
                                                child: Text(
                                                  array[ index ][ 0 ] ,
                                                  textAlign: TextAlign.center ,
                                                  style: TextStyle(
                                                    fontFamily: 'f1',
                                                    fontSize: hi / 45  ,
                                                    color: const Color.fromARGB(255, 0, 0, 0)
                                                  ),
                                                )
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      SizedBox( height: hi / 40 ,),
                                      Wrap(
                                        children: [
                                          TweenAnimationBuilder(
                                            tween: Tween<double>(begin: 1, end: 0 ),
                                            duration: Duration(milliseconds: 500 ),
                                            builder: (context, value, child) {
                                              return Align(
                                                alignment: Alignment( value , 0 ),
                                                child: Text(
                                                  array[ index ][ 1 ] ,
                                                  textAlign: TextAlign.center ,
                                                  style: TextStyle(
                                                    fontFamily: 'f1',
                                                    fontSize: hi / 45  ,
                                                    color: const Color.fromARGB(255, 44, 44, 44)
                                                  ),
                                                )
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                              // SizedBox( height: hi / 50 ,),
                                      Wrap(
                                        children: [
                                          TweenAnimationBuilder(
                                            tween: Tween<double>(begin: -1, end: 0 ),
                                            duration: Duration(milliseconds: 500 ),
                                            builder: (context, value, child) {
                                              return Align(
                                                alignment: Alignment( value , 0 ),
                                                child: Text(
                                                  array[ index ][ 2 ] ,
                                                  textAlign: TextAlign.center ,
                                                  style: TextStyle(
                                                    fontFamily: 'f1',
                                                    fontSize: hi / 50  ,
                                                    color: const Color.fromARGB(255, 136, 136, 136)
                                                  ),
                                                )
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                      SizedBox( height: hi / 40 ,),
                                      Wrap(
                                        children: [
                                          TweenAnimationBuilder(
                                            tween: Tween<double>(begin: 1, end: 0 ),
                                            duration: Duration(milliseconds: 500 ),
                                            builder: (context, value, child) {
                                              return Align(
                                                alignment: Alignment( value , 0 ),
                                                child: Text(
                                                  array[ index ][ 3 ] ,
                                                  textAlign: TextAlign.center ,
                                                  style: TextStyle(
                                                    fontFamily: 'f1',
                                                    fontSize: hi / 45  ,
                                                    color: const Color.fromARGB(255, 44, 44, 44)
                                                  ),
                                                )
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                              // SizedBox( height: hi /50 ,),
                                      Wrap(
                                        children: [
                                          TweenAnimationBuilder(
                                            tween: Tween<double>(begin: -1, end: 0 ),
                                            duration: Duration(milliseconds: 500 ),
                                            builder: (context, value, child) {
                                              return Align(
                                                alignment: Alignment( value , 0 ),
                                                child: Text(
                                                  array[ index ][ 4 ] ,
                                                  textAlign: TextAlign.justify ,
                                                  style: TextStyle(
                                                    fontFamily: 'f1',
                                                    fontSize: hi / 50  ,
                                                    color: const Color.fromARGB(255, 136, 136, 136)
                                                  ),
                                                )
                                              );
                                            },
                                          ),
                                        ],
                                      ),
                                    ],
                                  ), 
                                ),
                              ) ,
                      ) ,
                      backWidget: Container(
                        height: hi / 3.5 ,
                        width: wi / 1.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(90) , bottomRight: Radius.circular(90) ),
                          
                          // color: const Color.fromARGB(255, 110, 110, 110),
                          color: const Color.fromARGB(255, 90, 90, 90),
                          border: Border.all(
                            width: 1 , 
                            color: const Color.fromARGB(255, 255, 255, 255),
                          )
                        ),  
                                        
                            child: 
                               Padding(
                                // padding: EdgeInsets.all( wi / 25 ),
                                padding: EdgeInsets.only( top: wi / 8 , bottom: wi / 8 , left: wi / 25 , right: wi / 25 ),
                                
                                child: SingleChildScrollView(
                                  child : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      // Text( "GIRI ")
                                      Container(
                                        
                                        height: hi / 2.3  /3   ,
                                        width: wi / 1.5 -2 * ( wi / 25 ) ,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(0, 76, 175, 79),
                                          image: DecorationImage(image: AssetImage(array[ index ][ 5 ] ) , fit: BoxFit.cover)
                                        ),
                                      ),
                                      Divider(
                                        height: hi / 15  ,
                                        color: const Color.fromARGB(255, 255, 255, 255) ,
                                        thickness: 1,
                                    
                                      ) ,
                                      Wrap(
                                        children: [
                                          TweenAnimationBuilder(
                                            tween: Tween<double>(begin: 1, end: 0 ),
                                            duration: Duration(milliseconds: 500 ),
                                            builder: (context, value, child) {
                                              return Align(
                                                alignment: Alignment( value , 0 ),
                                                child: Text(
                                                  array[ index ][ 6 ] ,
                                                  textAlign: TextAlign.justify ,
                                                  style: TextStyle(
                                                    fontFamily: 'f1',
                                                    fontSize: hi / 50  ,
                                                    color: const Color.fromARGB(255, 255, 255, 255)
                                                  ),
                                                )
                                              );
                                            },
                                          ),
                                        ],
                                      ),

                                      SizedBox( height: 15,),

                                      Stack(
                                        children: [

                                          
                                          
                                          
                                          TweenAnimationBuilder(
                                              curve: Curves.decelerate ,
                                              duration: Duration( milliseconds: 1000 ),
                                              tween: ColorTween( begin: Colors.transparent ,end:  const Color.fromARGB(255, 0, 0, 0) ),
                                              builder: (context, value, child) {
                                              return Container(
                                              height: wi / 15 ,
                                              width: hi / 10 ,
                                              color: const Color.fromARGB(255, 255, 255, 255),
                                                child: Center(
                                                  child: Text( 
                                                    'VIEW CODE' , 
                                                    style: TextStyle( fontFamily: 'f1' , fontSize: wi / 25, color: value  ) ,
                                                  ),
                                                ),
                                              );
                                            }
                                          ),
                                          GestureDetector(
                                            onTap: () async {
                                              // print( array[ index ][ 7 ] ) ;
                                              final Uri url = Uri.parse(array[ index ][ 7 ]);
                                              if (await canLaunchUrl(url)) {
                                                await launchUrl(url, mode: LaunchMode.externalApplication);
                                              } else {
                                                throw 'Could not launch $url';
                                              }
                                            },
                                            child: Container(
                                              height: wi / 15 ,
                                              width: hi / 10 ,
                                              color: const Color.fromARGB(0, 255, 255, 255),
                                            ),
                                          ) ,
                                        ],
                                      ),


                                          

                                          


                                       

                                    ],
                                  ), 
                                ),
                              ) ,
                      ),
                        
                    
                    ),
                  ) ;
                },
              ),

             
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
      ),
    );
  }
}



List < dynamic > array = [
  [
    'ECOMMERCE APPLICATION' ,
    'TECHONOLOGIES' , 
    'Dart , Flutter , Flutter Bloc , RestAPIs , VScode.' ,
    'ABOUT PROJECT' ,
    "Developed a cross-platform e-commerce application using Flutter, compatible with Android, iOS, and Web, featuring a clean and intuitive UI/UX. Implemented multi-role authentication with separate login and sign-in pages for users and sellers, along with a product view page that allows users to add products to their cart, maintaining a unique cart for each user. Integrated the application with a Spring Boot backend to securely send and retrieve data through REST APIs and managed product image storage in the cloud for efficient access and retrieval."  ,
    "assets/image/gEFE.jpeg",
    "#Dart , #Flutter , #Flutter Bloc , #RestAPIs " ,
    'https://github.com/girigdr/ECOMMERSE/tree/main/lib'
  ] ,
  [

    'ECOMMERCE APPLICATION' ,
    'TECHONOLOGIES' , 
    'Java , SpringBoot , RestAPIs , MySQl , MySQL WorkBench , Postman .' ,
    'ABOUT PROJECT' ,
    "Developed an e-commerce application using Java and Spring Boot to handle backend operations and integrated it with a Flutter application. Implemented multi-role authentication with separate login and sign-in pages for users and sellers, along with a product view page that allows users to add products to their cart, maintaining a unique cart for each user. Utilized REST APIs to send and fetch data between the backend and frontend efficiently. Applied One-to-One and One-to-Many relationships to store data without duplication and leveraged Cloudinary cloud services to store product images, saving the image URLs in the database for easy retrieval." ,
    "assets/image/gEcomBE.jpeg",
    "#Java , #SpringBoot , #RestAPIs , #MySQL",
    'https://github.com/girigdr/ECOMMERSE/tree/main/src'


  ] ,
   [

    'EMAIL TEXT EDITOR' ,
    'TECHONOLOGIES' , 
    'Flutter , Bloc , Dart .' ,
    'ABOUT PROJECT' ,
    "Developed a responsive email text editor UI in Flutter, replicating the functionality and design of a standard email compose interface. Implemented features to allow users to compose, format, and preview emails seamlessly. Integrated a dynamic theme switcher to toggle between dark and light modes",
    "assets/image/e.jpeg",
    "#Flutter , #Bloc , #Dart",
    'https://github.com/girigdr/EmailSystem/tree/main/email_service'


  ] ,
  [

    'PING PONG GAME USING JAVA' ,
    'TECHONOLOGIES' , 
    'Java , Swing .' ,
    'ABOUT PROJECT' ,
    "Developed a classic Ping Pong game using Java and Swing, featuring a responsive and engaging graphical user interface. Utilized JFrame, JPanel, and Timer to create and manage the game window, ball movement, and game loop. Implemented game logic to control ball movement, collision detection, and used a paddle at the bottom to bounce the ball back. Added logic to handle game-over conditions when the ball misses the paddle. Integrated key event listeners to capture user input for paddle movement and ensured smooth gameplay with real-time updates. Enhanced the user experience with score tracking and dynamic game state updates.",
    "assets/image/ppg.jpeg",
    "#Java , #Swing",
    'https://github.com/girigdr/PING_PONG_GAME'


  ] ,
  [

    'SNAKE GAME USING JAVA' ,
    'TECHONOLOGIES' , 
    'Java , Swing .' ,
    'ABOUT PROJECT' ,
    "Developed a classic Snake game using Java and Swing, featuring a responsive and engaging graphical user interface. Utilized JFrame, JPanel, and Timer to create and manage the game window, grid, and game loop. Implemented game logic to control snake movement, collision detection, and food generation, ensuring smooth gameplay and real-time updates. Added key event listeners to handle user input for snake direction and incorporated logic to manage game-over conditions when the snake collides with itself or the game boundaries. Enhanced the user experience with score tracking and dynamic game state updates." ,
    "assets/image/jSG.jpeg",
    "#Java , #Swing",
    'https://github.com/girigdr/SNAKE_GAME'


  ] ,

] ;

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
      left:  w / 10  ,
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