// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/heroSection/download_pdf.dart';
import 'package:personal_portfolio/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeroDesktopSection extends StatefulWidget {
  const HeroDesktopSection({super.key});

  @override
  State<HeroDesktopSection> createState() => _HeroDesktopSectionState();
}

class _HeroDesktopSectionState extends State<HeroDesktopSection> {
  bool isHovered = false;
  bool isHoveredg = false;
  bool isHoveredl = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      width: w,
      height: w * 0.594,
      padding: EdgeInsets.only(top: w * 0.06),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: w * 0.1),
              color: AppColors.bgWhite1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "UI UX Designer\nFlutter Developer.",
                    style: TextStyle(
                      fontSize: w * 0.036,
                      color: AppColors.titleTxt,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: w * 0.01,
                  ),
                  Text(
                    "Hi, I'm Hassan Momin. I build beautiful, easy-to-use \nmobile apps with Flutter and a keen eye for design.",
                    style: TextStyle(
                      fontSize: w * 0.013,
                      color: AppColors.subtitleTxt1,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: w * 0.018,
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
                        height: w * 0.034,
                        width: w * 0.12,
                        decoration: BoxDecoration(
                          border:
                              Border.all(color: AppColors.primary, width: 1.2),
                          borderRadius: BorderRadius.circular(4),
                          color: isHovered
                              ? AppColors.primary
                              : AppColors.bgWhite1,
                        ),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.download,
                                  color: isHovered
                                      ? AppColors.bgWhite1
                                      : AppColors.primary,
                                  size: w * 0.014),
                              SizedBox(
                                width: w * 0.004,
                              ),
                              Text(
                                "Resume",
                                style: TextStyle(
                                  fontSize: w * 0.01,
                                  color: isHovered
                                      ? AppColors.bgWhite1
                                      : AppColors.primary,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: w * 0.018,
                  ),
                  Row(
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
                            height: w * 0.02,
                            color: isHoveredg
                                ? AppColors.primary
                                : AppColors.titleTxt,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: w * 0.01,
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
                            height: w * 0.022,
                            color: isHoveredl
                                ? AppColors.primary
                                : AppColors.titleTxt,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage("assets/images/hero.png"),
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
