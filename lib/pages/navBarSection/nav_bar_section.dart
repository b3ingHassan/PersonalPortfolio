import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'nav_bar_desktop_section.dart';
import 'nav_bar_mobile_section.dart';
import 'nav_bar_tablet_section.dart';

class NavBarSection extends StatelessWidget {
  final ScrollController scrollController;

  const NavBarSection({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => NavBarDesktopSection(
        scrollController: scrollController,
      ),
      mobile: (p0) => const NavBarMobileSection(),
      tablet: (p0) => const NavBarTabletSection(),
    );
  }
}
