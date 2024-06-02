// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors.dart';
import 'download_pdf.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeroTabletSection extends StatefulWidget {
  const HeroTabletSection({super.key});

  @override
  State<HeroTabletSection> createState() => _HeroTabletSectionState();
}

class _HeroTabletSectionState extends State<HeroTabletSection> {
  bool isHovered = false;
  bool isHoveredg = false;
  bool isHoveredl = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      height: w * 1.2,
      width: w,
      color: AppColors.bgWhite1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(200000),
            child: Container(
              height: w * 000.4,
              width: w * 000.4,
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
              fontSize: w * 0.058,
              fontWeight: FontWeight.bold,
              color: AppColors.titleTxt,
            ),
          ),
          SizedBox(
            height: w * 0.02,
          ),
          Text(
            "Hi, I'm Hassan Momin. I create intuitive and visually\nappealing mobile apps using Flutter.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: w * 0.026,
              fontWeight: FontWeight.normal,
              color: AppColors.subtitleTxt2,
            ),
          ),
          SizedBox(
            height: w * 0.03,
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
                height: w * 0.066,
                width: w * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(
                    color: AppColors.primary,
                    width: 1.2,
                  ),
                  color: isHovered ? AppColors.primary : AppColors.bgWhite1,
                ),
                child: Center(
                    child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.download,
                      color: isHovered ? AppColors.bgWhite1 : AppColors.primary,
                     size: w*0.034, 
                    ),
                    SizedBox(
                      width: w * 0.008,
                    ),
                    Text(
                      "Resume",
                      style: TextStyle(
                        fontSize: w * 0.02,
                        fontWeight: FontWeight.w500,
                        color:
                            isHovered ? AppColors.bgWhite1 : AppColors.primary,
                      ),
                    ),
                  ],
                )),
              ),
            ),
          ),
          SizedBox(
            height: w * 0.03,
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
                    height: w * 0.04,
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
                    height: w * 0.045,
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
