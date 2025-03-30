
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilio_giridharan/BLOC/lightTheme.dart';
import 'package:portfoilio_giridharan/Education/Skills.dart';
import 'package:portfoilio_giridharan/Education/SkillsLandScapeMode.dart';
import 'package:portfoilio_giridharan/MOBILE/LandscapeMode.dart';

class SkillScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
              final t = mediaQuery.padding.top;
              final b = mediaQuery.padding.bottom;
              final l = mediaQuery.padding.left;
              final r = mediaQuery.padding.right;
              final h = mediaQuery.size.height;
              final w = mediaQuery.size.width;
  final skill =  BlocProvider.of < BlocSTF >( context ) ;
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            return SkillsLM ( skill : skill  , l: h , r:w ,  t:t , b:b, ) ; // Landscape mode widget
          } else {
            return Skills( skill : skill  , l: h , r:w ,  t:t , b:b, ) ; // Portrait mode widget
          }
        },
      ),
    );
  }
}