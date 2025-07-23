import 'package:flutter/material.dart';

import 'EducationItem.dart';

class EducationSection extends StatelessWidget {
  const EducationSection(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    final educationList = [
      {
        'degree': 'Diploma in Software Engineering',
        'institution': 'Sabaragamuwa University',
        'graduationYear': '2019',
      },
      {
        'degree': 'BSc. Agriculture',
        'institution': 'Rajarata University',
        'graduationYear': '2025',
      },
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Education',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
          // Education items
          ...educationList.map((education) => EducationItem(
            degree: education['degree'] as String,
            institution: education['institution'] as String,
            graduationYear: education['graduationYear'] as String,
          )),
        ],
      ),
    );
  }
}