

import 'package:flutter/Material.dart';
import 'package:portfoilio_giridharan/Education/About.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:url_launcher/url_launcher.dart';

class Proj extends StatefulWidget {
  const Proj({super.key});

  @override
  State<Proj> createState() => _ProjState();
}

class _ProjState extends State<Proj> {
  @override
  Widget build(BuildContext context) {

    PageController pc = PageController( initialPage:  0 ) ;
    FlipCardController fc = FlipCardController() ;

    final mediaQuery = MediaQuery.of(context);
        final t = mediaQuery.padding.top;
        final b = mediaQuery.padding.bottom;
        final l = mediaQuery.padding.left;
        final r = mediaQuery.padding.right;
    final hi = MediaQuery.of( context ).size.height   ;
    final wi = MediaQuery.of( context ).size.width  ;



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
                        alignment: Alignment( 0.5, -0.7 ),
                        child: Container(
                        height: hi / 10 ,
                        width: wi / 1.7 ,
                          color: const Color.fromARGB(0, 255, 193, 7) ,
                          child: FittedBox(
                            child: Row(
                              children: [
                                Text(
                                  'PROJECT ',
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
                                'SWIPE...',
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

                   PageView.builder(
                itemCount: array.length,
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
                    FlipCard(
                      controller: fc,
                      rotateSide: RotateSide.bottom ,
                      onTapFlipping : true ,
                      frontWidget: Container(
                        height: hi / 2.3 ,
                        width: wi / 1.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(100) , bottomRight: Radius.circular(100) ),
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
                        height: hi / 2.3 ,
                        width: wi / 1.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(100) , bottomRight: Radius.circular(100) ),
                          
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
                                                child: FittedBox(
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

              FutureBuilder(
                future: Future.delayed(const Duration(milliseconds: 100)),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return icon(h: hi, w: wi);
                  }
                  return const SizedBox(); // Placeholder before icon loads
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
