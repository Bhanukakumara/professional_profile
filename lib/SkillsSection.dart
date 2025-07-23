import 'package:flutter/material.dart';

import 'SkillItem.dart';

class SkillsSection extends StatelessWidget{
  const SkillsSection(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      {'name': 'Spring Boot', 'level': 0.95},
      {'name': 'Angular', 'level': 0.90},
      {'name': 'Firebase', 'level': 0.85},
      {'name': 'Node JS', 'level': 0.80},
      {'name': 'React', 'level': 0.88},
      {'name': 'Laravel', 'level': 0.75},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),

          // Skills grid with consistent spacing
          ...skills.map((skill) => SkillItem(
            skillName: skill['name'] as String,
            level: skill['level'] as double,
          )),
        ],
      ),
    );
  }

}