


import 'package:url_launcher/url_launcher.dart';

Future<void> makePhoneCall() async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: '+91 9043073937',
    );
    await launchUrl(launchUri);
  }
