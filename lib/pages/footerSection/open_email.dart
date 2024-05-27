// ignore_for_file: deprecated_member_use

import 'package:url_launcher/url_launcher.dart';
class OpenEmail {
  void launchEmail() async {
  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: 'hassanwm99@gmail.com',
  );

  if (await canLaunch(emailUri.toString())) {
    await launch(emailUri.toString());
  } else {
    // Handle the error if the email app cannot be launched
  }
}
}
