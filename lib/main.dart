

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'BLOC/lightTheme.dart';
import 'PROFILE/profile.dart';

import 'package:flutter/foundation.dart'; // Import for kIsWeb
import 'dart:io' show Platform;

void main() {
  runApp( MyApp() ) ;
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
      ] ,
      child: MaterialApp( 
          debugShowCheckedModeBanner : false , 
          theme : ThemeData(
            scaffoldBackgroundColor: const Color.fromARGB(255, 209, 6, 6) ,
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.black , 
              brightness:  Brightness.dark  ,
            )
          )  ,
          home : SafeArea(
            child: kIsWeb ? Scaffold(body : Center(child: Text("AVAIABLE SOON"))) : Profile() ,
          ) 
        ),
    ) ;
  
    
    
    
  }
}



 
