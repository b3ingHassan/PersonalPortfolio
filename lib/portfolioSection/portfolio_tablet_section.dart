import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors.dart';

class PortfolioTabletSection extends StatefulWidget {
  const PortfolioTabletSection({super.key});

  @override
  State<PortfolioTabletSection> createState() => _PortfolioTabletSectionState();
}

class _PortfolioTabletSectionState extends State<PortfolioTabletSection> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.02,
        vertical: w * 0.1,
      ),
      color: AppColors.bgWhite1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Portfolio",
            style: TextStyle(
              fontSize: w * 0.02,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: w * 0.01,
          ),
          Text(
            "Best Projects",
            style: TextStyle(
              fontSize: w * 0.03,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: w * 0.024,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PortfolioCustomWidget(
                w: w,
                description: "Something",
                title: "GharTak Food Delivery App",
              ),
               PortfolioCustomWidget(
                w: w,
                description: "Something",
                title: "GharTak Food Delivery App",
              ),

            ],
          ),SizedBox(
            height: w*0.02,
          ),  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PortfolioCustomWidget(
                w: w,
                description: "Something",
                title: "GharTak Food Delivery App",
              ),
               PortfolioCustomWidget(
                w: w,
                description: "Something",
                title: "GharTak Food Delivery App",
              ),
                
            ],
          )
        ],
      ),
    );
  }
}

class PortfolioCustomWidget extends StatelessWidget {
  const PortfolioCustomWidget({
    super.key,
    required this.w,
    required this.title,
    required this.description,
  });

  final double w;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: w * 0.28,
          width: w * 0.47,
          color: AppColors.accent,
        ),
        SizedBox(
          height: w * 0.01,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: w * 0.02,
            fontWeight: FontWeight.normal,
          ),
        ),
        SizedBox(
          height: w * 0.01,
        ),
        SizedBox(
          width: w * 0.47,
          child: Text(
            description,
            style: TextStyle(
              fontSize: w * 0.02,
              height: 1.8,
              fontWeight: FontWeight.normal,
              color: AppColors.subtitleTxt2,
            ),
          ),
        ),
      ],
    );
  }
}
