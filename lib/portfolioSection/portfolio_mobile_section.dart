// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/colors.dart';

class PortfolioMobileSection extends StatefulWidget {
  const PortfolioMobileSection({super.key});

  @override
  State<PortfolioMobileSection> createState() => _PortfolioMobileSectionState();
}

class _PortfolioMobileSectionState extends State<PortfolioMobileSection> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.034,
        vertical: w * 0.1,
      ),
      color: AppColors.bgWhite1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "PORTFOLIO",
            style: TextStyle(
              fontSize: w * 0.03,
              fontWeight: FontWeight.w500,
              color: AppColors.titleTxt,
            ),
          ),
          SizedBox(
            height: w * 0.02,
          ),
          Text(
            "Best Projects",
            style: TextStyle(
              fontSize: w * 0.05,
              fontWeight: FontWeight.bold,
              color: AppColors.titleTxt,
            ),
          ),
          SizedBox(height: w * 0.06),
          ProjectsCardMobile(
            w: w,
            description:
                'Designed a user-friendly app for booking AC repair, painting, and car wash services. Streamlined booking process, verified professionals, and easy payments.',
            img: 'assets/images/SerYouMobile.png',
            title: 'ServYou 24',
            link:
                'https://www.figma.com/design/lFFchRCwocFtTcpKOyTRh1/ServYou-24?node-id=6-2&t=9htn36JtR3aFJZJB-1',
          ),
          SizedBox(
            height: w * 0.1,
          ),
          ProjectsCardMobile(
            w: w,
            description:
                "Designed a food delivery app enabling orders of multiple dishes from one restaurant. Created an intuitive interface for effortless browsing and ordering.",
            img: 'assets/images/GharTakMobile.png',
            title: 'GharTak Food Delivery App',
            link:
                'https://www.figma.com/design/JnSol7fcWmg7sDiEFqfYRu/GharTak-Food-Delivery-App?node-id=0%3A1&t=fa4v5j6m62VYxq3l-1',
          ),
          SizedBox(
            height: w * 0.1,
          ),
          ProjectsCardMobile(
            w: w,
            description:
                "Developed a comprehensive studio booking application, tailored specifically for the music industry. This app enables artists and producers to seamlessly book recording studios for creating albums, advertisements, and live gigs. ",
            img: 'assets/images/StudioMobile.png',
            title: 'Studio Booking App',
            link:
                'https://www.figma.com/design/fbBLH4veFTEGGxAP2ro69r/Studio-App-(-Fig-)?node-id=0-1&t=lBdCMbPnW8Q1qcXF-1',
          ),
        ],
      ),
    );
  }
}

class ProjectsCardMobile extends StatelessWidget {
  final String title;
  final String img;
  final String link;
  final String description;
  const ProjectsCardMobile({
    Key? key,
    required this.title,
    required this.img,
    required this.link,
    required this.description,
    required this.w,
  }) : super(key: key);
  void launchFigmaLink() async {
    // ignore: deprecated_member_use
    if (await canLaunch(link)) {
      // ignore: deprecated_member_use
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }

  final double w;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: w * 0.5,
          width: w,
          color: AppColors.primary,
          child: Image.asset(
            img, // Path to the asset image
            fit: BoxFit.cover, // You can adjust the fit as per your requirement
          ),
        ),
        SizedBox(
          height: w * 0.02,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: w * 0.04,
            fontWeight: FontWeight.w600,
            color: AppColors.titleTxt,
          ),
        ),
        SizedBox(height: w * 0.02),
        Text(
          description,
          style: TextStyle(
            fontSize: w * 0.034,
            height: 1.8,
            fontWeight: FontWeight.normal,
            color: AppColors.subtitleTxt2,
          ),
        ),
        SizedBox(height: w * 0.02),
        InkWell(
          onTap: () {
            launchFigmaLink();
          },
          child: Text(
            "Figma Link",
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: w * 0.034,
              height: 1.8,
              fontWeight: FontWeight.normal,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    );
  }
}
