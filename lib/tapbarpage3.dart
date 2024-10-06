import 'package:flutter/material.dart';

// ignore: camel_case_types
class tapbarpage3 extends StatefulWidget {
  const tapbarpage3({super.key});

  @override
  State<tapbarpage3> createState() => _tapbarpage3();
}

// ignore: camel_case_types
class _tapbarpage3 extends State<tapbarpage3> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          // Avatar Profil
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage(
              'assets/images/profile_saya.jpg',
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Rizky Afriza Rosal Fino',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          // Email
          const Text(
            'zaaa555@hotmail.com',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          // Bio
          const Text(
            'Backend Developer | Red team Cybersecurity | Networking',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).primaryColor,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            ),
            child: const Text(
              'Edit Profil',
              style: TextStyle(fontSize: 16),
            ),
          ),
          const Spacer(),
          const Divider(height: 40, thickness: 2),
          const Text(
            'Last seen: 2 hours ago',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
