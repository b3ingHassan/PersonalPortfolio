import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors.dart';

class NavBarMobileSection extends StatelessWidget {
  const NavBarMobileSection({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: w * 0.04),
      height: w * 0.14,
      width: w,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.04),
          spreadRadius: 5, // Spread radius
          blurRadius: 10, // Blur radius
          offset: const Offset(0, 5),
        ),
      ], color: AppColors.bgWhite1),
      child: Row(
        children: [
          navBarMobileItem(
            w,
            AppColors.primary,
            "b3ingHassan",
            w * 0.04,
            FontWeight.bold,
          ),
        ],
      ),
    );
  }
}

InkWell navBarMobileItem(
  double w,
  Color color,
  String txt,
  double fsize,
  FontWeight fontWeight,
) {
  return InkWell(
    onTap: null,
    child: Text(
      txt,
      style: TextStyle(
        color: color,
        fontSize: fsize,
        fontWeight: fontWeight,
      ),
    ),
  );
}
