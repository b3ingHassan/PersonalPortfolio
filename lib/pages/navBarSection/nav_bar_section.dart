import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/constants.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'nav_bar_desktop_section.dart';
import 'nav_bar_mobile_section.dart';
import 'nav_bar_tablet_section.dart';

class NavBarSection extends StatelessWidget {
  final ScrollController scrollController;

  const NavBarSection({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    return ScreenTypeLayout.builder(
      desktop: (BuildContext context) => NavBarDesktopSection(
        scrollController: scrollController,
      ),
      mobile: (p0) => const NavBarMobileSection(),
      tablet: (p0) => const NavBarTabletSection(),
    );
  }
}
