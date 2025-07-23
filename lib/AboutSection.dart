import 'package:flutter/material.dart';

class AboutSection extends StatelessWidget{
  const AboutSection(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'About',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 12),

          // Professional summary (2-3 lines as required)
          Text(
            'Motivated and results-driven professional with a BSc in Agriculture (Specialized in Agricultural Engineering) and a Diploma in Software Engineering, now transitioning into a career as a Full-Stack Developer. Proficient in Java, Spring Boot, Angular, and React, with strong skills in both backend and frontend development. Brings a unique combination of field experience and technical expertise, with a strong analytical and problem-solving mindset developed through hands-on roles in Agri-tech companies. Skilled in developing scalable, user-centric web applications and contributing effectively to agile software development teams.',
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 12),

          // Current role/position
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: const Color(0xFF3498DB).withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.work,
                  color: Color(0xFF3498DB),
                  size: 20,
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Current Position',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'Intern Full Stack Developer at Simplify Pvt Ltd',
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}