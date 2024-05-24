import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors.dart';
import 'download_pdf.dart';
class HeroTabletSection extends StatefulWidget {
  const HeroTabletSection({super.key});

  @override
  State<HeroTabletSection> createState() => _HeroTabletSectionState();
}

class _HeroTabletSectionState extends State<HeroTabletSection> {
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
          Text(
            "HELLO",
            style: TextStyle(
              fontSize: w * 0.034,
              fontWeight: FontWeight.normal,
              color: AppColors.subtitleTxt1,
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(
            height: w * 0.002,
          ),
          Text(
            "I'm Hassan",
            style: TextStyle(
              fontSize: w * 0.058,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(
            height: w * 0.002,
          ),
          Text(
            "a freelance Flutter Developer\n and a UI UX Designer",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: w * 0.034,
              fontWeight: FontWeight.normal,
              color: AppColors.subtitleTxt1,
            ),
          ),
          SizedBox(
            height: w * 0.024,
          ),
          GestureDetector(
            onTap: () {
              downloadPDFFromGoogleDrive();
            },
            child: Container(
              height: w * 0.058,
              width: w * 0.2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                border: Border.all(
                  color: AppColors.primary,
                  width: 1.2,
                ),
                color: AppColors.bgWhite1,
              ),
              child: Center(
                  child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.download,
                    color: AppColors.primary,
                  ),
                  SizedBox(
                    width: w * 0.008,
                  ),
                  Text(
                    "Resume",
                    style: TextStyle(
                      fontSize: w * 0.02,
                      fontWeight: FontWeight.w500,
                      color: AppColors.primary,
                    ),
                  ),
                ],
              )),
            ),
          )
        ],
      ),
    );
  }
}
