import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors.dart';

class AboutMeDesktopSection extends StatefulWidget {
  const AboutMeDesktopSection({super.key});

  @override
  State<AboutMeDesktopSection> createState() => _AboutMeDesktopSectionState();
}

class _AboutMeDesktopSectionState extends State<AboutMeDesktopSection> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      color: AppColors.bgWhite1,
      padding: EdgeInsets.only(left: w * 0.1),
      height: w * 0.54,
      width: w,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Hello there, I'm",
                  style: TextStyle(
                    fontSize: w * 0.012,
                    color: AppColors.subtitleTxt1,
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: w * 0.004,
                ),
                Text(
                  "Hassan Momin",
                  style: TextStyle(
                    fontSize: w * 0.024,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: w * 0.01,
                ),
                SizedBox(
                  width: w * 0.3,
                  child: Text(
                    "As a UI/UX designer with two years of hands-on experience, I am passionate about creating seamless and visually appealing digital experiences. I excel in transforming ideas into intuitive interfaces that enhance user engagement and satisfaction.",
                    style: TextStyle(
                      fontSize: w * 0.011,
                      height: 1.8,
                      fontWeight: FontWeight.normal,
                      color: AppColors.subtitleTxt2,
                    ),
                  ),
                ),
                SizedBox(
                  height: w * 0.02,
                ),
                SizedBox(
                  width: w * 0.3,
                  child: Text(
                    "My expertise includes user research, wireframing, prototyping, and usability testing. I thrive on solving complex design challenges and crafting elegant user interfaces that blend aesthetics with functionality.",
                    style: TextStyle(
                      fontSize: w * 0.011,
                      height: 1.8,
                      fontWeight: FontWeight.normal,
                      color: AppColors.subtitleTxt2,
                    ),
                  ),
                ),
                SizedBox(
                  height: w * 0.02,
                ),
                SizedBox(
                  width: w * 0.3,
                  child: Text(
                    "Committed to staying at the forefront of design trends, I ensure my work aligns with industry best practices. Let's connect to explore how my skills can elevate your digital projects to the next level.",
                    style: TextStyle(
                      fontSize: w * 0.011,
                      height: 1.8,
                      fontWeight: FontWeight.normal,
                      color: AppColors.subtitleTxt2,
                    ),
                  ),
                ),
                SizedBox(
                  height: w * 0.02,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_city,
                      color: AppColors.primary,
                    ),
                    SizedBox(
                      width: w * 0.001,
                    ),
                    Text(
                      "Bhiwandi, Marashtra",
                      style: TextStyle(
                        fontSize: w * 0.011,
                        height: 1.8,
                        fontWeight: FontWeight.normal,
                        color: AppColors.primary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: w * 0.1),
              child: Center(
                child: Image.asset(
                  "assets/images/aboutme.png",
                  height: w * 0.34,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
