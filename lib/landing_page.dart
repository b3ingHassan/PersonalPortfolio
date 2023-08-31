import 'package:flutter/material.dart';

import 'pages/heroSection/hero_section.dart';
import 'pages/navBarSection/nav_bar_section.dart';
import 'pages/workFlowSection/workflow_section.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

PageController controller = PageController();

class _LandingPageState extends State<LandingPage> {
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            scrollDirection: Axis.vertical,
            controller: _scrollController,
            children: const [
              HeroSection(),
              WorkFlowSection()
            ],
          ),
          NavBarSection(
            scrollController: _scrollController,
          ),
        ],
      ),
    );
  }
}
