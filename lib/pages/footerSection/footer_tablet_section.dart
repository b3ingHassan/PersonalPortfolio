import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:personal_portfolio/pages/footerSection/open_email.dart';
import 'package:personal_portfolio/utils/colors.dart';

class FooterTabletSection extends StatefulWidget {
  const FooterTabletSection({super.key});

  @override
  State<FooterTabletSection> createState() => _FooterTabletSectionState();
}

class _FooterTabletSectionState extends State<FooterTabletSection> {
  bool isHovered=false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      height: w*0.7,
      width: w,
      color: AppColors.bgColor2,
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.02,
        vertical: w * 0.1,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "GET IN TOUCH",
            style: TextStyle(
              fontSize: w * 0.02,
              fontWeight: FontWeight.normal,
              color: AppColors.bgWhite2,
            ),
          ),
          SizedBox(
            height: w * 0.01,
          ),
          Text(
            "Let's Connect",
            style: TextStyle(
                fontSize: w * 0.03,
                fontWeight: FontWeight.bold,
                color: AppColors.accent),
          ),
          SizedBox(
            height: w * 0.024,
          ),
          Text(
            "Have a project or opportunity in mind? Let's have a\nnice chat over it. Contact me here or email me at",
            style: TextStyle(
              fontSize: w * 0.02,
              fontWeight: FontWeight.normal,
              color: AppColors.bgWhite1,
            ),
          ),
          SizedBox(
            height: w * 0.04,
          ),
          MouseRegion(
            onEnter: (_){
              setState(() {
                isHovered=true;
              });
            },
            onExit: (_){
              setState(() {
                isHovered=false;
              });
            },
            child: InkWell(
                onTap: 
              (){
                OpenEmail().launchEmail();
            
              },
              child: Container(
                width: w * 0.34,
                height: w * 0.058,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                 
                  color: isHovered?AppColors.bgWhite1:AppColors.primary,
                
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.email,
                                           color: isHovered?AppColors.primary:AppColors.bgWhite1,

                      ),
                      SizedBox(
                        width: w * 0.008,
                      ),
                      Text(
                        "hassanwm99@gmail.com",
                        style: TextStyle(
                          fontSize: w * 0.02,
                          fontWeight: FontWeight.w500,
                                            color: isHovered?AppColors.primary:AppColors.bgWhite1,

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
