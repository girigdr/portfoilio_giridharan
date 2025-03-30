

 

import 'package:flutter/material.dart';
import 'package:portfoilio_giridharan/Education/About.dart';
import 'package:portfoilio_giridharan/Education/AboutLandScapeMode.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            return Aboutlandscapemode (); // Landscape mode widget
          } else {
            return About (); // Portrait mode widget
          }
        },
      ),
    );
  }
}