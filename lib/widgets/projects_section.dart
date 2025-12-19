import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/sns_links.dart';
import 'package:portfolio/utils/project_utils.dart';
import 'package:portfolio/widgets/project_card.dart';
import 'dart:js' as js;

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          //Work Projects title
          Text(
            'My Projects',
            style: TextStyle(
              fontSize: 24,
              fontWeight: .bold,
              color: CustomColor.whitePrimary,
            ),
          ),

          //Work Projects Cards
          // SizedBox(height: 50),
          // ConstrainedBox(
          //   constraints: BoxConstraints(maxWidth: 1000),
          //   child: Wrap(
          //     spacing: 25,
          //     runSpacing: 25,
          //     children: [
          //       for (int i = 0; i < workProjects.length; i++)
          //         ProjectCardWidget(
          //           project: workProjects[i],
          //         ),
          //     ],
          //   ),
          // ),

          // SizedBox(height: 80),

          // //Hobby Projects
          // Text(
          //   'Hobby Projects',
          //   style: TextStyle(
          //     fontSize: 24,
          //     fontWeight: .bold,
          //     color: CustomColor.whitePrimary,
          //   ),
          // ),

          // //Work Projects Cards
          SizedBox(height: 50),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 1000),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < hobbyProjectUtils.length; i++)
                  ProjectCardWidget(
                    project: hobbyProjectUtils[i],
                  ),
              ],
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: .center,
            children: [
              Text('More in Github'),
              IconButton(onPressed: (){
                js.context.callMethod('open', [SnsLinks.github]);
              }, icon: Image.asset('assets/github.png', height: 30,))
            ],
          )
        ],
      ),
    );
  }
}
