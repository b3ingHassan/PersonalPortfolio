import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors.dart';

class WorkFlowMobileSection extends StatefulWidget {
  const WorkFlowMobileSection({super.key});

  @override
  State<WorkFlowMobileSection> createState() => _WorkFlowMobileSectionState();
}

class _WorkFlowMobileSectionState extends State<WorkFlowMobileSection> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.034,
        vertical: w * 0.2,
      ),
      color: AppColors.bgWhite2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "WORK FLOW",
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
            "Design Process",
            style: TextStyle(
              fontSize: w * 0.05,
              fontWeight: FontWeight.bold,
              color: AppColors.titleTxt,
            ),
          ),
          SizedBox(
            height: w * 0.06,
          ),
          DesignProcessCard(
            w: w,
            title: "Research",
            description:
                'This is how everything starts. Gathering information about the project to understand the problem space and identitfying the pain points to outline the scope and better identify the requirements.',
          ),
          SizedBox(
            height: w * 0.1,
          ),
          DesignProcessCard(
            w: w,
            description:
                'Planning in the right direction after the identification of the problem space and stiching the right solution according to that is very cruicial.',
            title: 'Strategy',
          ),
          SizedBox(
            height: w * 0.1,
          ),
          DesignProcessCard(
            w: w,
            description:
                'After the end of this phase you will have pixel perfect designs for your mobile/ web application. Stimulating interactions, robust design systems, I have done it all for my various freelance clients before.',
            title: 'Design',
          ),
          SizedBox(
            height: w * 0.1,
          ),
          DesignProcessCard(
            w: w,
            description:
                'Conducting usability tests to ensure the credibility of the solution designed according to the problem statements discovered. Aligning the target audiences feedback with the proposed solution for pragmatic & feedback oriented results.',
            title: 'Testing',
          )
        ],
      ),
    );
  }
}

class DesignProcessCard extends StatelessWidget {
  final String title;
  final String description;

  const DesignProcessCard({
    super.key,
    required this.w,
    required this.title,
    required this.description,
  });

  final double w;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: w * 0.04,
            fontWeight: FontWeight.w500,
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
      ],
    );
  }
}
