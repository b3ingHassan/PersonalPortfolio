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
      decoration: BoxDecoration(
      color: AppColors.bgWhite1,
    
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            spreadRadius: 5, // Spread radius
            blurRadius: 10, // Blur radius
            offset: const Offset(0, 5),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.024,
      ),
      height: w * 0.1,
      child: Row(
        children: [
          Text(
            "b3ingHassan",
            style: TextStyle(
              fontSize: w * 0.03,
              fontWeight: FontWeight.bold,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
