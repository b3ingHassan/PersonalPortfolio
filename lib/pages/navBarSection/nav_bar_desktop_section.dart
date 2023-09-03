import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/constants.dart';

import '../../utils/colors.dart';

class NavBarDesktopSection extends StatelessWidget {
  final ScrollController scrollController;

  const NavBarDesktopSection({super.key, required this.scrollController});
  void scrollToSection(int index) {
    double sectionHeight = w! * 0.55; // Replace with the actual section height

    double offset = index * sectionHeight;

    scrollController.animateTo(
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
      color: AppColors.bgColor2,
      child: Row(
        children: [
          InkWell(
            onTap: () => scrollToSection(0),
            child: Text(
              "b3ingHassan",
              style: TextStyle(
                color: AppColors.bgWhite1,
                fontSize: w * 0.014,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          InkWell(
            onTap: () => scrollToSection(1),
            child: Text(
              "Work Flow",
              style: TextStyle(
                color: AppColors.bgWhite1,
                fontSize: w * 0.008,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(
            width: w * 0.04,
          ),
          InkWell(
            onTap: () => scrollToSection(2),
            child: Text(
              "Portfolio",
              style: TextStyle(
                color: AppColors.bgWhite1,
                fontSize: w * 0.008,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(
            width: w * 0.04,
          ),
          InkWell(
            onTap: () => scrollToSection(3),
            child: Text(
              "About Me",
              style: TextStyle(
                color: AppColors.bgWhite1,
                fontSize: w * 0.008,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(
            width: w * 0.04,
          ),
          InkWell(
            onTap: () => scrollToSection(4),
            child: Text(
              "Contact Me",
              style: TextStyle(
                color: AppColors.bgWhite1,
                fontSize: w * 0.008,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
