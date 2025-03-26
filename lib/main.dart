

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilio_giridharan/MOBILE/LandscapeMode.dart';
import 'BLOC/AboutIcon.dart';
import 'package:portfoilio_giridharan/MOBILE/LM.dart';
import 'package:portfoilio_giridharan/MOBILE/PM.dart';
import 'BLOC/lightTheme.dart';

import 'package:flutter/foundation.dart'; // Import for kIsWeb
import 'dart:io' show Platform;

void main() {
  runApp( 
    
    
    MyApp()
    
    
    
     ) ;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers : [
        BlocProvider(create: ( context ) => BlocOfIconView() ) ,
        BlocProvider(create: ( context ) => BlocGit() ) ,
        BlocProvider(create: ( context ) => BlocPhone() ) ,
        BlocProvider(create: ( context ) => BlocLeetcode() ) ,
        BlocProvider(create: ( context ) => BlocLinkedIn() ) ,
        BlocProvider(create: ( context ) => BlocMail() ) ,
        BlocProvider(create: (context) => BlocWL() ),
        BlocProvider(create: (context) => BlocEdTF() ),
        BlocProvider(create: (context) => BlocATF() ),
        BlocProvider(create: (context) => BlocSTF() ),
        BlocProvider(create: (context) => BlocAI () ),
        BlocProvider(create: (context) => BlocOfI1 () ),
        BlocProvider(create: (context) => BlocI2 () ),
        BlocProvider(create: (context) => BlocGitI () ),
        BlocProvider(create: (context) => BlocL () ),
        BlocProvider(create: (context) => BlocLeet () ),
        BlocProvider(create: (context) => BlocMailI () ),
        BlocProvider(create: (context) => BlocPTF () ),
      ] ,
      child: MaterialApp( 
          debugShowCheckedModeBanner : false , 
          theme : ThemeData(
            scaffoldBackgroundColor: const Color.fromARGB(255, 0, 0, 0) ,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.black , 
              brightness:  Brightness.dark  ,
            )
          )  ,
          home :Builder(
            builder: (context) {
              final mediaQuery = MediaQuery.of(context);
              final t = mediaQuery.padding.top;
              final b = mediaQuery.padding.bottom;
              final l = mediaQuery.padding.left;
              final r = mediaQuery.padding.right;
              final h = mediaQuery.size.height;
              final w = mediaQuery.size.width;

              // return BubbleScreen() ;
              return Scaffold(
                body: SafeArea(
                  child: kIsWeb ?
                  
                   L_M( t : t , b :  b , l : l , r : r ) 
                    :
                    ( h > w ) ?  P_M( t : t , b :  b , l : l , r : r )  : 
                    RotatedBox(quarterTurns: 1 , child: Land_M( t : t , b :  b , l : l , r : r )) 
                ),
              );
            },
          ),
                    
                    
          
        //    SafeArea(
        //     child: kIsWeb ? Scaffold(body : Center(child: Text("AVAIABLE SOON"))) : 
            
            
        //  Builder(
        //   builder: (context) {
        //     // This context is inside the SafeArea, so it should include the correct padding.
        //     final t = MediaQuery.of(context).padding.top;
        //     final b = MediaQuery.of(context).padding.bottom;
        //     return  P( t : t , b :  b ) ;
        //   },
        // ),
            
           
        //   ) 
        ),
    ) ;
  
    
    
    
  }
}



 
