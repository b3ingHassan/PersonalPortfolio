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
            height: w*0.06,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "I designed a user-friendly food delivery app that enables customers to order multiple dishes from a single restaurant. Its intuitive interface makes browsing and ordering effortless, enhancing the overall food delivery experience.",
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
                "I designed a user-friendly food delivery app that enables customers to order multiple dishes from a single restaurant. Its intuitive interface makes browsing and ordering effortless, enhancing the overall food delivery experience.",
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
                "I designed a user-friendly food delivery app that enables customers to order multiple dishes from a single restaurant. Its intuitive interface makes browsing and ordering effortless, enhancing the overall food delivery experience.",
                style: TextStyle(
                  fontSize: w * 0.034,
                  height: 1.8,
                  fontWeight: FontWeight.normal,
                  color: AppColors.subtitleTxt2,
                ),
              ),
              SizedBox(
                height: w * 0.02,
              ),
              Text(
                "Thane, Maharashtra",
                style: TextStyle(
                  fontSize: w * 0.034,
                  height: 1.8,
                  fontWeight: FontWeight.normal,
                  color: AppColors.primary,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}