import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:personal_portfolio/utils/colors.dart';
import 'package:url_launcher/url_launcher.dart';

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
                link: 'https://www.figma.com/design/JnSol7fcWmg7sDiEFqfYRu/GharTak-Food-Delivery-App?node-id=0%3A1&t=fa4v5j6m62VYxq3l-1',
              ),
              ProjectCardDesktop(
                w: w,
                description:
                    "Designed user-friendly food delivery app with intuitive interface, based on thorough user research. Collaborated closely with developers for seamless integration. Positive user feedback validated the app's effectiveness and accessibility.",
                img: 'assets/images/ghartak.png',
                title: 'GharTak Food Delivery App',
                link: 'https://www.figma.com/design/JnSol7fcWmg7sDiEFqfYRu/GharTak-Food-Delivery-App?node-id=0%3A1&t=fa4v5j6m62VYxq3l-1',
              ),
              ProjectCardDesktop(
                w: w,
                description:
                    'Created a responsive web application for managing tasks, with real-time collaboration features. Utilized modern web technologies and ensured cross-browser compatibility. This project highlights my web development skills and ability to work on complex, interactive applications.',
                img: 'assets/images/project1.png',
                title: 'Task Management Web App',
                link: 'https://www.figma.com/design/JnSol7fcWmg7sDiEFqfYRu/GharTak-Food-Delivery-App?node-id=0%3A1&t=fa4v5j6m62VYxq3l-1',
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProjectCardDesktop extends StatelessWidget {
  final double w;
  final String img;
  final String title;
  final String description;
  final String link;

  const ProjectCardDesktop({
    super.key,
    required this.w,
    required this.img,
    required this.title,
    required this.description,
    required this.link,
  });

  void launchFigmaLink() async {
    if (await canLaunch(link)) {
      await launch(link);
    } else {
      throw 'Could not launch $link';
    }
  }

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
              img,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(
            height: w * 0.01,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: w * 0.012,
                  fontWeight: FontWeight.w500,
                  color: AppColors.titleTxt,
                ),
              ),
              GestureDetector(
                onTap: () {
                  launchFigmaLink();
                },
                child: Text(
                  "Link",
                  style: TextStyle(
                    fontSize: w * 0.012,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue  ,
                  ),
                ),
              ),
            ],
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
