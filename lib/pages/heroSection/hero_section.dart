import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/heroSection/hero_tablet_section.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'hero_desktop_section.dart';
import 'hero_mobile_section.dart';

class HeroSection extends StatefulWidget {
  const HeroSection({super.key});

  @override
  State<HeroSection> createState() => _HeroSectionState();
}

class _HeroSectionState extends State<HeroSection> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const HeroDesktopSection(),
      mobile: (p0) => const HeroMobileSection(),
      tablet: (p0) => const HeroTabletSection(),
    );
  }
}
