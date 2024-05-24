import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:personal_portfolio/pages/heroSection/download_pdf.dart';
import 'package:personal_portfolio/utils/colors.dart';

class HeroMobileSection extends StatefulWidget {
  const HeroMobileSection({super.key});

  @override
  State<HeroMobileSection> createState() => _HeroMobileSectionState();
}

class _HeroMobileSectionState extends State<HeroMobileSection> {
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
      color: AppColors.bgColor1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Hi I'm Hassan Momin",
            style: TextStyle(
              fontSize: w * 0.06,
              color: AppColors.bgWhite1,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "UI UX Designer",
            style: TextStyle(
              fontSize: w * 0.06,
              color: AppColors.accent,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: w * 0.02,
          ),
          Text(
            "Creating Engaging Interfaces that Connect\nUsers with Purposeful Design Solutions",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: w * 0.03,
              color: AppColors.bgWhite2,
              fontWeight: FontWeight.normal,
              height: w * 0.0034,
            ),
          ),
          SizedBox(
            height: w * 0.04,
          ),
          GestureDetector(
            onTap: () {
                       ResumeDownlaod().downladPDF("/lib/HassanMomin.pdf");
              
            },
            child: Container(
              height: w * 0.08,
              width: w * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                  color: AppColors.primary),
              child: Center(
                child: Text(
                  "Downlaod Resume",
                  style: TextStyle(
                    fontSize: w * 0.028,
                    color: AppColors.bgWhite1,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
