import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const ProfileHeader(),

              const SizedBox(height: 20),

              const DetailRow(
                label: 'Email',
                value: 'your@email.com',
              ),

              const SizedBox(height: 10),

              const DetailRow(
                label: 'Location',
                value: 'Louisiana',
              ),

              const SizedBox(height: 20),

              const InfoCard(
                title: 'Skills',
                details: [
                  'Flutter',
                  'Dart',
                  'Git',
                  'Unity',
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/avatar.png',
          width: 150,
          height: 150,
        ),

        const SizedBox(height: 16),

        const Text(
          'Your Name',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 8),

        const Text(
          'Flutter Developer',
          style: TextStyle(
            fontSize: 18,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class DetailRow extends StatelessWidget {
  final String label;
  final String value;

  const DetailRow({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '$label: ',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        Text(value),
      ],
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final List<String> details;

  const InfoCard({
    super.key,
    required this.title,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          const SizedBox(height: 10),

          for (String detail in details)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Text(
                detail,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
        ],
      ),
    );
  }
}