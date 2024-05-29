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
                  "As a UI/UX designer with two years of hands-on experience, I am passionate about creating seamless and visually appealing digital experiences. I excel in transforming ideas into intuitive interfaces that enhance user engagement and satisfaction.",
                style: TextStyle(
              fontSize: w * 0.02,
              height: 1.8,
              fontWeight: FontWeight.normal,
              color: AppColors.subtitleTxt2,
            ),
                ),
                SizedBox(
                  height: w * 0.01,
                ),
                Text(
                  "My expertise includes user research, wireframing, prototyping, and usability testing. I thrive on solving complex design challenges and crafting elegant user interfaces that blend aesthetics with functionality.",
                style: TextStyle(
              fontSize: w * 0.02,
              height: 1.8,
              fontWeight: FontWeight.normal,
              color: AppColors.subtitleTxt2,
            ),
                ),
                SizedBox(
                  height: w * 0.01,
                ),
                Text(
                  "Committed to staying at the forefront of design trends, I ensure my work aligns with industry best practices. Let's connect to explore how my skills can elevate your digital projects to the next level.",
                style: TextStyle(
              fontSize: w * 0.02,
              height: 1.8,
              fontWeight: FontWeight.normal,
              color: AppColors.subtitleTxt2,
            ),
                ),
                SizedBox(
                  height: w * 0.02,
                ),
                Row(
                  children: [
                    Icon(Icons.location_city,color: AppColors.primary,),
                    SizedBox(
                      width: w*0.02,
                    ),
                    Text(
                      "Bhiwandi Maharashtra",
                      style: TextStyle(
                    
                        fontSize: w * 0.02,
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
