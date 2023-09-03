import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'work_flow_desktop_section.dart';
import 'work_flow_mobile_section.dart';
import 'work_flow_tablet_section.dart';

class WorkFlowSection extends StatefulWidget {
  const WorkFlowSection({super.key});

  @override
  State<WorkFlowSection> createState() => _WorkFlowSectionState();
}

class _WorkFlowSectionState extends State<WorkFlowSection> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => const WorkFlowDesktopSection(),
      mobile: (p0) => const WorkFlowMobileSection(),
      tablet: (p0) => const WorkFlowTabletSection(),
    );
  }
}
