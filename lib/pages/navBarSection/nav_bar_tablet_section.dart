import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors.dart';

class NavBarTabletSection extends StatefulWidget {
  const NavBarTabletSection({super.key});

  @override
  State<NavBarTabletSection> createState() => _NavBarTabletSectionState();
}

class _NavBarTabletSectionState extends State<NavBarTabletSection> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.024,
      ),
      height: w * 0.1,
      color: AppColors.bgColor1,
      child: Row(
        children: [
          Text(
            "b3ingHassan",
            style: TextStyle(
              fontSize: w * 0.03,
              fontWeight: FontWeight.bold,
              color: AppColors.bgWhite1,
            ),
          ),
          const Spacer(),
          Icon(
            Icons.menu,
            color: AppColors.bgWhite1,
            size: w * 0.04,
          )
        ],
      ),
    );
  }
}
