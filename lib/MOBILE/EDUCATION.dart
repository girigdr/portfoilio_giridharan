
import 'package:flutter/material.dart';
import 'package:portfoilio_giridharan/Education/EDULandScape.dart';
import 'package:portfoilio_giridharan/Education/Edu.dart';

class EDUScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            return EE ( h : 0 ,w : 0 , t : 0 , b : 0, edu: 0, ) ; // Landscape mode widget
          } else {
            return E ( h : 0 ,w : 0 , t : 0 , b : 0, edu: 0, ); // Portrait mode widget
          }
        },
      ),
    );
  }
}