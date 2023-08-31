import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'work_flow_desktop_section.dart';
import 'work_flow_mobile_section.dart';
import 'work_flow_tablet_section.dart';

class WorkFlowSection extends StatelessWidget {
  const WorkFlowSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => WorkFlowDesktopSection(),
      mobile: (p0) => WorkFlowMobileSection(),
      tablet: (p0) => WorkFlowTabletSection(),
    );
  }
}
