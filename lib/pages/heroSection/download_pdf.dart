 // ignore_for_file: deprecated_member_use

 import 'package:url_launcher/url_launcher.dart';
 void openPDF() async {
    const pdfFile = 'https://drive.google.com/file/d/1Go_0ewx3Ld8bpewaERsT940zSl7Rxkne/view?usp=sharing';
    if (await canLaunch(pdfFile)) {
      await launch(pdfFile);
    } else {
      throw 'Could not launch $pdfFile';
    }
  }