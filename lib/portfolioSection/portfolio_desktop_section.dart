import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors.dart';

class PortfolioDesktopSection extends StatefulWidget {
  const PortfolioDesktopSection({super.key});

  @override
  State<PortfolioDesktopSection> createState() =>
      _PortfolioDesktopSectionState();
}

class _PortfolioDesktopSectionState extends State<PortfolioDesktopSection> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.1,
      ),
      width: w,
      height: w * 0.55,
      color: AppColors.bgWhite1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "PORTFOLIO",
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
            "Best Projects",
            style: TextStyle(
              fontSize: w * 0.024,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: w * 0.04,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ProjectCardDesktop(w: w),
              ProjectCardDesktop(w: w),
              ProjectCardDesktop(w: w),
            ],
          )
        ],
      ),
    );
  }
}

class ProjectCardDesktop extends StatelessWidget {
  const ProjectCardDesktop({
    super.key,
    required this.w,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w * 0.24,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: w * 0.256,
            height: w * 0.18,
            color: AppColors.bgWhite2,
          ),
          SizedBox(
            height: w * 0.01,
          ),
          Text(
            "GharTak - Food Delivery App",
            style: TextStyle(
              fontSize: w * 0.012,
              fontWeight: FontWeight.w500,
              color: AppColors.titleTxt,
            ),
          ),
          SizedBox(
            height: w * 0.004,
          ),
          SizedBox(
            child: Text(
              "Effortless dining starts here. Browse diverse menus, order with a tap, and savor restaurant-quality meals delivered to your door. Elevate your food experience with our app today.",
              style: TextStyle(
                fontSize: w * 0.011,
                height: 1.8,
                fontWeight: FontWeight.normal,
                color: AppColors.subtitleTxt1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
