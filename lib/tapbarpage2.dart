import 'package:flutter/material.dart';

class tapbarPage2 extends StatefulWidget {
  const tapbarPage2({super.key});

  @override
  State<tapbarPage2> createState() => _tapbarPage2State();
}

class _tapbarPage2State extends State<tapbarPage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Stack(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://static.miraheze.org/jkt48wikiwiki/c/c3/Gita_Sekar_Andarini_JKT48%2C_2024.jpg'),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ),
              ],
            ),
            title: const Text(
              'Status Saya',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('Ketuk untuk menambahkan status'),
            onTap: () {},
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Pembaruan terbaru',
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey),
            ),
          ),
          const Divider(),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://as2.ftcdn.net/v2/jpg/09/89/01/49/1000_F_989014985_Tt1LtDYaGvCeshxswaTGMAr8kNITdNtk.jpg'),
            ),
            title: const Text(
              'Fatimah',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('5 menit yang lalu'),
            onTap: () {},
          ),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://as1.ftcdn.net/v2/jpg/05/93/90/40/1000_F_593904070_MML6mBgAlQF6ZSBp81aOQPBUY7FgQwjm.jpg'),
            ),
            title: const Text(
              'Ade',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('15 menit yang lalu'),
            onTap: () {},
          ),
          ListTile(
            leading: const CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1816699999759269889/oELs_nCu_400x400.jpg'),
            ),
            title: const Text(
              'DeanKT',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: const Text('30 menit yang lalu'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
