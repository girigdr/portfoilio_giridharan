
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfoilio_giridharan/BLOC/lightTheme.dart';
import 'package:portfoilio_giridharan/Education/PRO.dart';
import 'package:portfoilio_giridharan/Education/ProjectLandScape.dart';

class PROScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            return Projectlandscape(); // Landscape mode widget
          } else {
            return Proj() ; // Portrait mode widget
          }
        },
      ),
    );
  }
}