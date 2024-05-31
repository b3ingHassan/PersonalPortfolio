import 'package:flutter/material.dart';
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
                    'Designed a user-friendly app for booking AC repair, painting, and car wash services. Streamlined booking process, verified professionals, and easy payments.',
                img: 'assets/images/ServYouDesktop.png',
                title: 'ServYou 24',
                link:
                    'https://www.figma.com/design/lFFchRCwocFtTcpKOyTRh1/ServYou-24?node-id=6-2&t=9htn36JtR3aFJZJB-1',
              ),
              ProjectCardDesktop(
                w: w,
                description:
                    "Designed a food delivery app enabling orders of multiple dishes from one restaurant. Created an intuitive interface for effortless browsing and ordering.",
                img: "assets/images/GharTakDesktop.png",
                title: 'GharTak Food Delivery App',
                link:
                    'https://www.figma.com/design/JnSol7fcWmg7sDiEFqfYRu/GharTak-Food-Delivery-App?node-id=0%3A1&t=fa4v5j6m62VYxq3l-1',
              ),
              ProjectCardDesktop(
                w: w,
                description:
             "Developed a comprehensive studio booking application, tailored specifically for the music industry. This app enables artists and producers to seamlessly book recording studios for creating albums, advertisements, and live gigs. ",img: "assets/images/StudioDesktop.png",
                title: 'Studio Booking App',
                link:
                    'https://www.figma.com/design/fbBLH4veFTEGGxAP2ro69r/Studio-App-(-Fig-)?node-id=0-1&t=Cnp7BHd9agyE4mR5-1',
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
    // ignore: deprecated_member_use
    if (await canLaunch(link)) {
      // ignore: deprecated_member_use
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
          Text(
            title,
            style: TextStyle(
              fontSize: w * 0.012,
              fontWeight: FontWeight.w600,
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
          SizedBox(
            height: w*0.004,
          ),
       InkWell(
           onTap: () {
             launchFigmaLink();
           },
            child: Text(
              "Figma Link",
              style: TextStyle(
                decoration: TextDecoration.underline,
                fontSize: w * 0.012,
                color: AppColors.primary,
                letterSpacing: 1.2,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
