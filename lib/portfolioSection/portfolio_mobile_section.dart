import 'package:flutter/material.dart';

import '../utils/colors.dart';
class PortfolioMobileSection extends StatefulWidget {
  const PortfolioMobileSection({super.key});

  @override
  State<PortfolioMobileSection> createState() => _PortfolioMobileSectionState();
}

class _PortfolioMobileSectionState extends State<PortfolioMobileSection> {
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
            "PORTFOLIO",
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
            "Best Projects",
            style: TextStyle(
              fontSize: w * 0.05,
              fontWeight: FontWeight.bold,
              color: AppColors.titleTxt,
            ),
          ),
          SizedBox(height: w * 0.06),
          ProjectsCardMobile(
            w: w,
            title: "GharTak Food Delivery App",
            description:
                "I designed a user-friendly food delivery app that enables customers to order multiple dishes from a single restaurant. Its intuitive interface makes browsing and ordering effortless, enhancing the overall food delivery experience.",
          ),
          SizedBox(
            height: w * 0.1,
          ),
          ProjectsCardMobile(
            w: w,
            title: "GharTak Food Delivery App",
            description:
                "I designed a user-friendly food delivery app that enables customers to order multiple dishes from a single restaurant. Its intuitive interface makes browsing and ordering effortless, enhancing the overall food delivery experience.",
          ),
          SizedBox(
            height: w * 0.1,
          ),
          ProjectsCardMobile(
            w: w,
            title: "GharTak Food Delivery App",
            description:
                "I designed a user-friendly food delivery app that enables customers to order multiple dishes from a single restaurant. Its intuitive interface makes browsing and ordering effortless, enhancing the overall food delivery experience.",
          ),
        ],
      ),
    );
  }
}

class ProjectsCardMobile extends StatelessWidget {
  final String title;
  final String description;
  const ProjectsCardMobile({
    super.key,
    required this.w,
    required this.title,
    required this.description,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: w * 0.04,
            fontWeight: FontWeight.w500,
            color: AppColors.titleTxt,
          ),
        ),
        SizedBox(
          height: w * 0.02,
        ),
        Container(
          height: w * 0.5,
          width: w,
          color: AppColors.primary,
          child: Image.asset(
              "assets/images/studioapp.png", // Path to the asset image
              fit: BoxFit.cover, // You can adjust the fit as per your requirement
            ),
        ),
        SizedBox(height: w * 0.02),
        Text(
          description,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: w * 0.034,
            height: 1.8,
            fontWeight: FontWeight.normal,
            color: AppColors.subtitleTxt2,
          ),
        ),
      ],
    );
  }
}