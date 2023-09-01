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
      color: AppColors.bgColor1,
      child: Row(
        children: [
          navBarMobileItem(
            w,
            AppColors.bgWhite1,
            "bringHassan",
            w * 0.04,
            FontWeight.bold,
          ),
          const Spacer(),
          InkWell(
            onTap: () {
              Scaffold.of(context).openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: AppColors.bgWhite1,
            ),
          )
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
