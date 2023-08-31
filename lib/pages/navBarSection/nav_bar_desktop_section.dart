import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/constants.dart';

import '../../utils/colors.dart';

class NavBarDesktopSection extends StatelessWidget {
  final ScrollController scrollController;

  const NavBarDesktopSection({super.key, required this.scrollController});
  void scrollToSection(int index) {
    double sectionHeight = w! * 0.5; // Replace with the actual section height

    double offset = index * sectionHeight;

    scrollController.animateTo(
      offset,
      duration: const Duration(milliseconds: 500),
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
          navBarDesktopItem(w, AppColors.bgWhite1, "b3ingHassan",
              () => scrollToSection(0), w * 0.014, FontWeight.bold),
          const Spacer(),
          navBarDesktopItem(
            w,
            AppColors.bgWhite1,
            "Work Flow",
            () => scrollToSection(1),
            w * 0.008,
            FontWeight.normal,
          ),
          SizedBox(
            width: w * 0.04,
          ),
          navBarDesktopItem(
            w,
            AppColors.bgWhite1,
            "Portfolio",
            () => scrollToSection(1),
            w * 0.008,
            FontWeight.normal,
          ),
          SizedBox(
            width: w * 0.04,
          ),
          navBarDesktopItem(
            w,
            AppColors.bgWhite1,
            "About Me",
            () => scrollToSection(1),
            w * 0.008,
            FontWeight.normal,
          ),
          SizedBox(
            width: w * 0.04,
          ),
          navBarDesktopItem(
            w,
            AppColors.bgWhite1,
            "Contact Me",
            () => scrollToSection(1),
            w * 0.008,
            FontWeight.normal,
          ),
        ],
      ),
    );
  }

  InkWell navBarDesktopItem(
    double w,
    Color color,
    String txt,
    void Function() onTap,
    double fsize,
    FontWeight fontWeight,
  ) {
    return InkWell(
      onTap: onTap,
      child: Text(
        txt,
        style: TextStyle(
          color: color,
          fontSize: fsize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
