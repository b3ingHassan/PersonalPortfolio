import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/constants.dart';

import '../../utils/colors.dart';

class NavBarDesktopSection extends StatefulWidget {
  final ScrollController scrollController;

  const NavBarDesktopSection({super.key, required this.scrollController});

  @override
  State<NavBarDesktopSection> createState() => _NavBarDesktopSectionState();
}

class _NavBarDesktopSectionState extends State<NavBarDesktopSection> {
  bool isHovered1 = false;
  bool isHovered2 = false;
  bool isHovered3 = false;
  bool isHovered4 = false;


  void scrollToSection(int index) {
    double sectionHeight = w! * 0.55; // Replace with the actual section height

    double offset = index * sectionHeight;

    widget.scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 800),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: w * 0.1),
      height: w * 0.06,
      width: w,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.04),
          spreadRadius: 5, // Spread radius
          blurRadius: 10, // Blur radius
          offset: const Offset(0, 5),
        ),
      ], color: AppColors.bgWhite1),
      child: Row(
        children: [
          InkWell(
            onTap: () => scrollToSection(0),
            child: Text(
              "b3ingHassan",
              style: TextStyle(
                color: AppColors.primary,
                fontSize: w * 0.014,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          MouseRegion(
            onEnter: (_) {
              setState(() {
                isHovered1 = true;
              });
            },
            onExit: (_) {
              setState(() {
                isHovered1 = false;
              });
            },
            child: InkWell(
              onTap: () => scrollToSection(1),
              child: Text(
                "Work Flow",
                style: TextStyle(
                  color:
                      isHovered1 ? AppColors.primary : AppColors.subtitleTxt2,
                  fontSize: w * 0.008,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            width: w * 0.04,
          ),
          MouseRegion(
            onEnter: (_) {
              setState(() {
                isHovered2 = true;
              });
            },
            onExit: (_) {
              setState(() {
                isHovered2 = false;
              });
            },
            child: InkWell(
              onTap: () => scrollToSection(2),
              child: Text(
                "Portfolio",
                style: TextStyle(
                  color:
                      isHovered2 ? AppColors.primary : AppColors.subtitleTxt2,
                  fontSize: w * 0.008,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            width: w * 0.04,
          ),
          MouseRegion(
            onEnter: (_) {
              setState(() {
                isHovered3 = true;
              });
            },
            onExit: (_) {
              setState(() {
                isHovered3 = false;
              });
            },
            child: InkWell(
              onTap: () => scrollToSection(3),
              child: Text(
                "About Me",
                style: TextStyle(
                  color:
                      isHovered3 ? AppColors.primary : AppColors.subtitleTxt2,
                  fontSize: w * 0.008,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            width: w * 0.04,
          ),
          MouseRegion(
            onEnter: (_) {
              setState(() {
                isHovered4 = true;
              });
            },
            onExit: (_) {
              setState(() {
                isHovered4 = false;
              });
            },
            child: InkWell(
              onTap: () => scrollToSection(4),
              child: Text(
                "Contact Me",
                style: TextStyle(
                  color:
                      isHovered4 ? AppColors.primary : AppColors.subtitleTxt2,
                  fontSize: w * 0.008,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
