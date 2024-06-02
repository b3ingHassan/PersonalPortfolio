// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/heroSection/download_pdf.dart';
import 'package:personal_portfolio/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeroMobileSection extends StatefulWidget {
  const HeroMobileSection({super.key});

  @override
  State<HeroMobileSection> createState() => _HeroMobileSectionState();
}

class _HeroMobileSectionState extends State<HeroMobileSection> {
  bool isHovered = false;

  bool isHoveredg = false;

  bool isHoveredl = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.04,
        vertical: w * 0.1,
      ),
      height: w * 1.9,
      width: w,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(200000),
            child: Container(
              height: w * 000.5,
              width: w * 000.5,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/hero.png"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          SizedBox(
            height: w * 0.04,
          ),
          Text(
            "UI UX Designer\nFlutter Developer.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: w * 0.08,
              color: AppColors.titleTxt,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: w * 0.03,
          ),
          Text(
            "Hi, I'm Hassan Momin. I create intuitive and\nvisually appealing mobile apps using Flutter.",
            textAlign: TextAlign.center,
            style: TextStyle(
              height: w * 0.0034,
              fontSize: w * 0.03,
              color: AppColors.subtitleTxt2,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: w * 0.04,
          ),
          MouseRegion(
            onEnter: (_) {
              setState(() {
                isHovered = true;
              });
            },
            onExit: (_) {
              setState(() {
                isHovered = false;
              });
            },
            child: InkWell(
              onTap: () {
                openPDF();
              },
              child: Container(
                width: w * 0.34,
                height: w * 0.1,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: AppColors.primary,
                    width: 1.2,
                  ),
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                  color: isHovered ? AppColors.primary : AppColors.bgWhite1,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.download,
                      color: isHovered ? AppColors.bgWhite1 : AppColors.primary,
                    ),
                    SizedBox(
                      width: w * 0.004,
                    ),
                    SizedBox(
                      width: w * 0.01,
                    ),
                    Text(
                      "Resume",
                      style: TextStyle(
                        fontSize: w * 0.028,
                        color:
                            isHovered ? AppColors.bgWhite1 : AppColors.primary,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
       height: w * 0.04,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MouseRegion(
                onEnter: (_) {
                  setState(() {
                    isHoveredg = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isHoveredg = false;
                  });
                },
                child: InkWell(
                  onTap: () {
                    launchGitHub();
                  },
                  child: SvgPicture.asset(
                    'assets/images/github.svg',
                    height: w * 0.05,
                    color: isHoveredg ? AppColors.primary : AppColors.titleTxt,
                  ),
                ),
              ),
              SizedBox(
                width: w * 0.02,
              ),
              MouseRegion(
                onEnter: (_) {
                  setState(() {
                    isHoveredl = true;
                  });
                },
                onExit: (_) {
                  setState(() {
                    isHoveredl = false;
                  });
                },
                child: InkWell(
                  onTap: () {
                    launchLinkedin();
                  },
                  child: SvgPicture.asset(
                    'assets/images/link.svg',
                    height: w * 0.055,
                    color: isHoveredl ? AppColors.primary : AppColors.titleTxt,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
