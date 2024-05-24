import 'dart:html' as html;

class ResumeDownload {
  void downloadPDF(String url) {
    final html.AnchorElement anchorElement = html.AnchorElement(href: url)
      ..setAttribute('download', 'HassanMomin.pdf')
      ..click();
  }
}
