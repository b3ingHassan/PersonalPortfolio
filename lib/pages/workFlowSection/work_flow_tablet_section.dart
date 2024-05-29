import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/colors.dart';

class WorkFlowTabletSection extends StatefulWidget {
  const WorkFlowTabletSection({super.key});

  @override
  State<WorkFlowTabletSection> createState() => _WorkFlowTabletSectionState();
}

class _WorkFlowTabletSectionState extends State<WorkFlowTabletSection> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: w * 0.02,
        vertical: w * 0.1,
      ),
      width: w,
      color: AppColors.bgWhite2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Work Flow",
            style: TextStyle(
              fontSize: w * 0.02,
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(
            height: w * 0.01,
          ),
          Text(
            "Design Process",
            style: TextStyle(
              fontSize: w * 0.03,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: w * 0.024,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TabletCustomWorkFlow(
                description:
                    'This is how everything starts. Gathering information about the project to understand the problem space and identitfying the pain points to outline the scope and better identify the requirements.',
                title: 'Research',
              ),
              TabletCustomWorkFlow(
                description:
                    'Planning in the right direction after the identification of the problem space and stiching the right solution according to that is very cruicial. ',
                title: 'Strategy',
              ),
            ],
          ),
          SizedBox(
            height: w * 0.04,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TabletCustomWorkFlow(
                description:
                    'After the end of this phase you will have pixel perfect designs for your mobile/ web application. Stimulating interactions, robust design systems, I have done it all for my various freelance clients before. ',
                title: 'Design',
              ),
              TabletCustomWorkFlow(
                  title: "Testing",
                  description:
                      "Conducting usability tests to ensure the credibility of the solution designed according to the problem statements discovered. Aligning the target audiences feedback with the proposed solution for pragmatic & feedback oriented results.")
            ],
          )
        ],
      ),
    );
  }
}

class TabletCustomWorkFlow extends StatelessWidget {
  const TabletCustomWorkFlow({
    super.key,
    required this.title,
    required this.description,
  });
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return SizedBox(
      width: w * 0.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: w * 0.025,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: w * 0.008,
          ),
          Text(
            description,
            style: TextStyle(
              fontSize: w * 0.018,
              height: 1.8,
              fontWeight: FontWeight.normal,
              color: AppColors.subtitleTxt2,
            ),
          ),
        ],
      ),
    );
  }
}
