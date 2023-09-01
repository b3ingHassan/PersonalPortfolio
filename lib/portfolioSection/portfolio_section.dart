import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'portfolio_desktop_section.dart';
import 'portfolio_mobile_section.dart';
import 'portfolio_tablet_section.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const PortfolioDesktopSection(),
      mobile: (p0) => const PortfolioMobileSection(),
      tablet: (p0) => const PortfolioTabletSection(),
    );
  }
}
