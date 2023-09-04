import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors.dart';

class WorkFlowDesktopSection extends StatefulWidget {
  const WorkFlowDesktopSection({super.key});

  @override
  State<WorkFlowDesktopSection> createState() => _WorkFlowDesktopSectionState();
}

class _WorkFlowDesktopSectionState extends State<WorkFlowDesktopSection> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.1,
      ),
      color: AppColors.bgWhite2,
      width: w,
      height: w * 0.55,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "WORK FLOW",
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
            "Design Process",
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
            children: [
              const CustomWorkFlowDesktop(
                title: "Research",
                description:
                    "This is how everything starts. Gathering information about the project to understand the problem space and identitfying the pain points to outline the scope and better identify the requirements.",
              ),
              SizedBox(
                width: w * 0.08,
              ),
              const CustomWorkFlowDesktop(
                title: "Strategy",
                description:
                    "Planning in the right direction after the identification of the problem space and stiching the right solution according to that is very cruicial.",
              ),
            ],
          ),
          SizedBox(
            height: w * 0.08,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomWorkFlowDesktop(
                title: "Research",
                description:
                    "This is how everything starts. Gathering information about the project to understand the problem space and identitfying the pain points to outline the scope and better identify the requirements.",
              ),
              SizedBox(
                width: w * 0.08,
              ),
              const CustomWorkFlowDesktop(
                title: "Strategy",
                description:
                    "Planning in the right direction after the identification of the problem space and stiching the right solution according to that is very cruicial.",
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomWorkFlowDesktop extends StatelessWidget {
  final String title;
  final String description;

  const CustomWorkFlowDesktop({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SizedBox(
      width: w * 0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: w * 0.012,
              fontWeight: FontWeight.w500,
              color: AppColors.titleTxt,
            ),
          ),
          SizedBox(height: w * 0.004),
          Text(
            description,
            style: TextStyle(
              fontSize: w * 0.011,
              height: 1.6,
              fontWeight: FontWeight.normal,
              color: AppColors.subtitleTxt2,
            ),
          ),
        ],
      ),
    );
  }
}
