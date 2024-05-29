import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class AboutMeMobileSection extends StatefulWidget {
  const AboutMeMobileSection({super.key});

  @override
  State<AboutMeMobileSection> createState() => _AboutMeMobileSectionState();
}

class _AboutMeMobileSectionState extends State<AboutMeMobileSection> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.034,
        vertical: w * 0.1,
      ),
      color: AppColors.bgWhite1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Nice to meet you!",
            style: TextStyle(
              fontSize: w * 0.03,
              fontWeight: FontWeight.w500,
              color: AppColors.titleTxt,
            ),
          ),
          SizedBox(
            height: w * 0.02,
          ),
          Text(
            "Hi there I'm Hassan Momin",
            style: TextStyle(
              fontSize: w * 0.05,
              fontWeight: FontWeight.bold,
              color: AppColors.titleTxt,
            ),
          ),
          SizedBox(height: w * 0.06),
          Container(
            height: w * 0.8,
            width: w,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/profilepic.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: w * 0.06,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "As a UI/UX designer with two years of hands-on experience, I am passionate about creating seamless and visually appealing digital experiences. I excel in transforming ideas into intuitive interfaces that enhance user engagement and satisfaction.",
                style: TextStyle(
                  fontSize: w * 0.034,
                  height: 1.8,
                  fontWeight: FontWeight.normal,
                  color: AppColors.subtitleTxt2,
                ),
              ),
              SizedBox(
                height: w * 0.06,
              ),
              Text(
                "My expertise includes user research, wireframing, prototyping, and usability testing. I thrive on solving complex design challenges and crafting elegant user interfaces that blend aesthetics with functionality.",
                style: TextStyle(
                  fontSize: w * 0.034,
                  height: 1.8,
                  fontWeight: FontWeight.normal,
                  color: AppColors.subtitleTxt2,
                ),
              ),
              SizedBox(
                height: w * 0.06,
              ),
              Text(
                "Committed to staying at the forefront of design trends, I ensure my work aligns with industry best practices. Let's connect to explore how my skills can elevate your digital projects to the next level.",
                style: TextStyle(
                  fontSize: w * 0.034,
                  height: 1.8,
                  fontWeight: FontWeight.normal,
                  color: AppColors.subtitleTxt2,
                ),
              ),
              SizedBox(
                height: w * 0.06,
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_city,
                    color: AppColors.primary,
                  ),
                  SizedBox(
                    width: w*0.02,
                  ),
                  Text(
                    "Bhiwandi, Maharashtra",
                    style: TextStyle(
                      fontSize: w * 0.034,
                      height: 1.8,
                      fontWeight: FontWeight.normal,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
