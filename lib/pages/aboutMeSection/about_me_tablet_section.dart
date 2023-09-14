import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors.dart';

class AboutMeTabletSection extends StatefulWidget {
  const AboutMeTabletSection({super.key});

  @override
  State<AboutMeTabletSection> createState() => _AboutMeTabletSectionState();
}

class _AboutMeTabletSectionState extends State<AboutMeTabletSection> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      width: w,
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.02,
        vertical: w * 0.1,
      ),
      color: AppColors.bgWhite1,
      child: Row(
        children: [
          SizedBox(
            width: w * 0.46,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hi there, I'm",
                  style: TextStyle(
                    fontSize: w * 0.02,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: w * 0.01,
                ),
                Text(
                  "Hassan Momin",
                  style: TextStyle(
                    fontSize: w * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: w * 0.024,
                ),
                Text(
                  "Planning in the right direction after the identification of the problem space and stiching the right solution according to that is very cruicial.",
                  style: TextStyle(
                    fontSize: w * 0.02,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: w * 0.01,
                ),
                Text(
                  "Planning in the right direction after the identification of the problem space and stiching the right solution according to that is very cruicial.",
                  style: TextStyle(
                    fontSize: w * 0.02,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(
                  height: w * 0.01,
                ),
                Text(
                  "Planning in the right direction after the identification of the problem space and stiching the right solution according to that is very cruicial.",
                  style: TextStyle(
                    fontSize: w * 0.02,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Image.asset(
              "assets/images/aboutme.png",
              height: w * 0.4,
              fit: BoxFit.contain,
            ),
          )
        ],
      ),
    );
  }
}
