import 'package:demo_app/constants/colors.dart';
import 'package:demo_app/utils/project_utils.dart';
import 'package:demo_app/widgets/project_card.dart';
import 'package:flutter/material.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
                width: screenWidth,
                padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  children: [
                    //Hobby project title
                    const Text(
                      "Hobby Projects",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),

                    const SizedBox(height: 50),
                    // Hobby  project cards
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 950),
                      child: Wrap(
                        spacing: 25,
                        runSpacing: 25,
                        children: [
                          for(int i=0; i<workProjectUtils.length;i++)
                          ProjectCardWidget(project: workProjectUtils[i],),
                        ],
                      ),
                    ),
                    


                    
                    const SizedBox(height: 80),
                    // Assignment project title
                    const Text(
                      "Assignment Projects",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),

                    const SizedBox(height: 50),
                    // Assignment project cards
                    ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 950),
                      child: Wrap(
                        spacing: 25,
                        runSpacing: 25,
                        children: [
                          for(int i=0; i<hobbyProjectUtils.length;i++)
                          ProjectCardWidget(project: hobbyProjectUtils[i],),
                        ],
                      ),
                    ),

                  ],
                ),
              );
  }
}