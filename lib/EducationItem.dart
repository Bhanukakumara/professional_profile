import 'package:flutter/material.dart';

class EducationItem extends StatelessWidget {
  final String degree;
  final String institution;
  final String graduationYear;

  const EducationItem({
    super.key,
    required this.degree,
    required this.institution,
    required this.graduationYear,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 16), // Add spacing between items
      decoration: BoxDecoration(
        border: const Border(
          left: BorderSide(
            color: Color(0xFF3498DB),
            width: 4,
          ),
        ),
        color: Colors.grey.shade50,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Degree/certification
          Text(
            degree,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 8),
          // Institution name
          Row(
            children: [
              const Icon(
                Icons.school,
                size: 16,
                color: Color(0xFF7F8C8D),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  institution,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          // Year of completion
          Row(
            children: [
              const Icon(
                Icons.calendar_today,
                size: 16,
                color: Color(0xFF7F8C8D),
              ),
              const SizedBox(width: 8),
              Text(
                'Graduated: $graduationYear',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}