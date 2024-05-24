import 'dart:html'as html;
class ResumeDownlaod {
   downladPDF(url) {
  html.AnchorElement anchorElement = html.AnchorElement(href: url);
  anchorElement.download = "HassanMomin";
  anchorElement.click();
}
}