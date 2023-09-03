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
      padding: EdgeInsets.only(
        left: w*0.1
      ),
      height: w * 0.54,
      width: w,
      child: Row(
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
                    "Planning in the right direction after the identification of the problem space and stiching the right solution according to that is very cruicial.",
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
                    "Planning in the right direction after the identification of the problem space and stiching the right solution according to that is very cruicial.",
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
                    "Planning in the right direction after the identification of the problem space and stiching the right solution according to that is very cruicial.",
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
                    "Mumbai, Marashtra",
                    style: TextStyle(
                      fontSize: w * 0.011,
                      height: 1.8,
                      fontWeight: FontWeight.normal,
                      color: AppColors.subtitleTxt2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/profilepic.jpg"),
                  fit: BoxFit.cover,
                ),
                color: AppColors.bgColor1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
