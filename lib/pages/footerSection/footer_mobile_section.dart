import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:personal_portfolio/pages/footerSection/open_email.dart';
import 'package:personal_portfolio/utils/colors.dart';

class FooterMobileSection extends StatefulWidget {
  const FooterMobileSection({super.key});

  @override
  State<FooterMobileSection> createState() => _FooterMobileSectionState();
}

class _FooterMobileSectionState extends State<FooterMobileSection> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.034,
        vertical: w * 0.1,
      ),
      height: w * 1.4,
      color: AppColors.bgColor2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Get in touch",
            style: TextStyle(
              fontSize: w * 0.034,
              color: AppColors.bgWhite1,
              fontWeight: FontWeight.normal,
            ),
          ),
          Text(
            "Let's Connect!",
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
            "Have a project or opportunity in mind? Let's have a\nnice chat over it. Contact me here or email me at",
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
            onTap: 
            (){
              OpenEmail().launchEmail();

            }
            ,
            child: Container(
              height: w * 0.08,
              width: w * 0.42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  4,
                ),
                color: AppColors.primary,
              ),
              child: Center(
                child: Text(
                  "hassanwm99@gmail.com",
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
