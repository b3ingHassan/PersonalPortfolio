// ignore_for_file: public_member_api_docs, sort_constructors_first
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
                description:
                  'Designed a user-friendly app for booking AC repair, painting, and car wash services. Streamlined booking process, verified professionals, and easy payments.',
              img: 'assets/images/studioapp.png',
              title: 'ServYou 24',
              link:
                  'https://www.figma.com/design/lFFchRCwocFtTcpKOyTRh1/ServYou-24?node-id=6-2&t=9htn36JtR3aFJZJB-1',
            ),
              PortfolioCustomWidget(
                w: w,
                  description:
                  "Designed a food delivery app enabling orders of multiple dishes from one restaurant. Created an intuitive interface for effortless browsing and ordering.",
              img: 'assets/images/ghartak.png',
              title: 'GharTak Food Delivery App',
              link:
                  'https://www.figma.com/design/JnSol7fcWmg7sDiEFqfYRu/GharTak-Food-Delivery-App?node-id=0%3A1&t=fa4v5j6m62VYxq3l-1',
            ),
            ],
          ),
          SizedBox(
            height: w * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              PortfolioCustomWidget(
                w: w,
                   description:
                  "Designed a food delivery app enabling orders of multiple dishes from one restaurant. Created an intuitive interface for effortless browsing and ordering.",
              img: 'assets/images/ghartak.png',
              title: 'GharTak Food Delivery App',
              link:
                  'https://www.figma.com/design/JnSol7fcWmg7sDiEFqfYRu/GharTak-Food-Delivery-App?node-id=0%3A1&t=fa4v5j6m62VYxq3l-1',
            ),
              PortfolioCustomWidget(
                w: w,
                    description:
                  "Designed a food delivery app enabling orders of multiple dishes from one restaurant. Created an intuitive interface for effortless browsing and ordering.",
              img: 'assets/images/ghartak.png',
              title: 'GharTak Food Delivery App',
              link:
                  'https://www.figma.com/design/JnSol7fcWmg7sDiEFqfYRu/GharTak-Food-Delivery-App?node-id=0%3A1&t=fa4v5j6m62VYxq3l-1',
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
    Key? key,
    required this.w,
    required this.title,
    required this.description,
    required this.img,
    required this.link,
  }) : super(key: key);

  final double w;
  final String title;
  final String description;
  final String img;
  final String link;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w*0.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: w * 0.28,
            width: w * 0.47,
            color: AppColors.accent,
            child: Image.asset(img),
          ),
          SizedBox(
            height: w * 0.01,
          ),
          Text(
            title,
            style: TextStyle(
              fontSize: w * 0.02,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: w * 0.01,
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: w * 0.02,
              height: 1.8,
              fontWeight: FontWeight.normal,
              color: AppColors.subtitleTxt2,
            ),
          ),
            SizedBox(
            height: w * 0.01,
          ),
            Text(
          "Figma Link",
            style: TextStyle(
                  decoration: TextDecoration.underline,
              
              fontSize: w * 0.02,
              height: 1.8,
              fontWeight: FontWeight.normal,
              color: AppColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
