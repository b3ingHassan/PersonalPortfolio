 // ignore_for_file: deprecated_member_use

 import 'package:url_launcher/url_launcher.dart';
 void openPDF() async {
    const pdfFile = 'https://drive.google.com/file/d/11QXnW7w4C8x2vXOHx1WRwStkJpBKaG-w/view?usp=sharing';
    if (await canLaunch(pdfFile)) {
      await launch(pdfFile);
    } else {
      throw 'Could not launch $pdfFile';
    }
  }

 void launchGitHub() async {
    const pdfFile = 'https://github.com/b3ingHassan';
    if (await canLaunch(pdfFile)) {
      await launch(pdfFile);
    } else {
      throw 'Could not launch $pdfFile';
    }
  }

 void launchLinkedin() async {
    const pdfFile = 'https://www.linkedin.com/in/hassan-momin-763960248/';
    if (await canLaunch(pdfFile)) {
      await launch(pdfFile);
    } else {
      throw 'Could not launch $pdfFile';
    }
  }
