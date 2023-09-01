import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'footer_desktop_section.dart';
import 'footer_mobile_section.dart';
import 'footer_tablet_section.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const FooterDesktopSection(),
      mobile: (p0) => const FooterMobileSection(),
      tablet: (p0) => const FooterTabletSection(),
    );
  }
}
