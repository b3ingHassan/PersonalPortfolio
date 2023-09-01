import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'about_me_desktop_section.dart';
import 'about_me_mobile_section.dart';
import 'about_me_tablet_section.dart';

class AboutMeSection extends StatelessWidget {
  const AboutMeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const AboutMeDesktopSection(),
      mobile: (p0) => const AboutMeMobileSection(),
      tablet: (p0) => const AboutMeTabletSection(),
    );
  }
}
