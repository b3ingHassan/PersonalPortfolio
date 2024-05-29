import 'package:flutter/material.dart';
import 'package:personal_portfolio/pages/footerSection/open_email.dart';
import 'package:personal_portfolio/utils/colors.dart';

class FooterDesktopSection extends StatefulWidget {
  const FooterDesktopSection({super.key});

  @override
  State<FooterDesktopSection> createState() => _FooterDesktopSectionState();
}

class _FooterDesktopSectionState extends State<FooterDesktopSection> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      height: w * 0.5,
      width: w,
      padding: EdgeInsets.only(top: w * 0.06),
      color: AppColors.bgColor2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "GET IN TOUCH",
            style: TextStyle(
              fontSize: w * 0.012,
              color: AppColors.subtitleTxt1,
              letterSpacing: 1.2,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: w * 0.004,
          ),
          Text(
            "Let's Connect!",
            style: TextStyle(
              fontSize: w * 0.024,
              color: AppColors.accent,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: w * 0.01,
          ),
          Text(
            "Have a project or opportunity in mind? Let's have a\nnice chat over it. Contact me here or email me at",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: w * 0.012,
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
                OpenEmail().launchEmail();
              },
              child: Container(
                height: w * 0.034,
                width: w * 0.18,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primary, width: 1.2),
                  borderRadius: BorderRadius.circular(4),
                  color: isHovered ? AppColors.bgWhite1 : AppColors.primary,
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.email,
                          color: isHovered
                              ? AppColors.primary
                              : AppColors.bgWhite1,
                          size: w * 0.014),
                      SizedBox(
                        width: w * 0.004,
                      ),
                      Text(
                        "hassanwm99@gmail.com",
                        style: TextStyle(
                          fontSize: w * 0.01,
                          color: isHovered
                              ? AppColors.primary
                              : AppColors.bgWhite1,
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
    );
  }
}
