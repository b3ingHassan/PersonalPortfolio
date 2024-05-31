import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/heroSection/download_pdf.dart';
import 'package:personal_portfolio/utils/colors.dart';

class HeroMobileSection extends StatefulWidget {
  const HeroMobileSection({super.key});

  @override
  State<HeroMobileSection> createState() => _HeroMobileSectionState();
}

class _HeroMobileSectionState extends State<HeroMobileSection> {
  bool isHovered = false;
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
           SizedBox(
            height: w * 0.02,
          ),
         
          Text(
            "a freelance UI UX Designer\nand Flutter Developer.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: w * 0.06,
              color: AppColors.accent,
              fontWeight: FontWeight.bold,
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
                height: w * 0.08,
                width: w * 0.4,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                  color: isHovered ? AppColors.bgWhite1 : AppColors.primary,
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.download,
                      color:
                          isHovered ? AppColors.primary : AppColors.bgWhite1,
                    ),
                    SizedBox(
                      width: w*0.004,
                    ),
                    Text(
                      "Downlaod Resume",
                      style: TextStyle(
                        fontSize: w * 0.028,
                        color: isHovered
                            ? AppColors.primary
                            : AppColors.bgWhite1,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
