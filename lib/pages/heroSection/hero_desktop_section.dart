import 'dart:html'as html;
import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/heroSection/download_pdf.dart';
import 'package:personal_portfolio/utils/colors.dart';

class HeroDesktopSection extends StatefulWidget {
  const HeroDesktopSection({super.key});

  @override
  State<HeroDesktopSection> createState() => _HeroDesktopSectionState();
}

class _HeroDesktopSectionState extends State<HeroDesktopSection> {
 

  bool isHovered = false;
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
                    "HELLO",
                    style: TextStyle(
                      fontSize: w * 0.016,
                      color: AppColors.subtitleTxt1,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  SizedBox(
                    height: w * 0.004,
                  ),
                  Text(
                    "I'm Hassan",
                    style: TextStyle(
                      fontSize: w * 0.048,
                      color: AppColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: w * 0.002,
                  ),
                  Text(
                    "a freelance UI UX Designer\nand Flutter Developer.",
                    style: TextStyle(
                      fontSize: w * 0.02,
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
              ResumeDownload().downloadPDF("assets/HassanMomin.pdf");
       
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
                  )
                ],
              ),
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
