import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget{
  const HeaderSection(BuildContext context, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const CircleAvatar(
            radius: 60,
            backgroundColor: Color(0xFF3498DB),
            backgroundImage: AssetImage('assets/images/1.jpg'),
          ),
          const SizedBox(height: 16),
          Text(
            'Bhanuka Kumara',
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Full Stack Developer',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
              color: const Color(0xFF3498DB),
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.location_on,
                size: 16,
                color: Color(0xFF7F8C8D),
              ),
              const SizedBox(width: 4),
              Text(
                'Lellopitiya, Ratnapura',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ],
      ),
    );
  }
  
}