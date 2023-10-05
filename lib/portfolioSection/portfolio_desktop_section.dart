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
              ProjectCardDesktop(
                w: w,
                description:
                    'Developed a mobile app enabling seamless studio bookings for artists. Led UI UX design, enhancing user experience. Implemented real-time notifications and interactive studio profiles. Demonstrated expertise in mobile app development and user-centric design principles.',
                img: 'assets/images/studioapp.png',
                title: 'Studio Booking App',
              ),
              ProjectCardDesktop(
                w: w,
                description:
                    "Designed user-friendly food delivery app with intuitive interface, based on thorough user research. Collaborated closely with developers for seamless integration. Positive user feedback validated the app's effectiveness and accessibility.",
                img: 'assets/images/ghartak.png',
                title: 'GharTak Food Delivery App',
              ),
              ProjectCardDesktop(
                w: w,
                description:
                    'Developed a mobile app enabling seamless studio bookings for artists. Led UI UX design, enhancing user experience. Implemented real-time notifications and interactive studio profiles. Demonstrated expertise in mobile app development and user-centric design principles.',
                img: 'assets/images/project1.png',
                title: 'Studio Booking App',
              ),
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
    required this.img,
    required this.title,
    required this.description,
  });

  final double w;
  final String img;

  final String title;
  final String description;

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
            child: Image.asset(
              img, // Path to the asset image
              fit: BoxFit
                  .contain, // You can adjust the fit as per your requirement
            ),
          ),
          SizedBox(
            height: w * 0.01,
          ),
          Text(
            title,
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
              description,
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
