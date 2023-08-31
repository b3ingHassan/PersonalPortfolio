import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'hero_mobile_section.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const HeroDesktopSection(),
      mobile: (p0) => const HeroMobileSection(),
      tablet: (p0) => const HeroTabletSection(),
    );
  }
}

class HeroDesktopSection extends StatefulWidget {
  const HeroDesktopSection({super.key});

  @override
  State<HeroDesktopSection> createState() => _HeroDesktopSectionState();
}

class _HeroDesktopSectionState extends State<HeroDesktopSection> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


class HeroTabletSection extends StatefulWidget {
  const HeroTabletSection({super.key});

  @override
  State<HeroTabletSection> createState() => _HeroTabletSectionState();
}

class _HeroTabletSectionState extends State<HeroTabletSection> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
