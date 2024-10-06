import 'package:flutter/material.dart';

class tapbarPage1 extends StatefulWidget {
  const tapbarPage1({super.key});

  @override
  State<tapbarPage1> createState() => _tapbarPage1State();
}

class _tapbarPage1State extends State<tapbarPage1> {
  final List<String> _namaPengirim = [
    "Fatimah",
    "Ade",
    "DeanKT",
    "David",
    "Adeline",
    "Udin",
    "Shani",
    "Indira",
    "Ella",
    "Fiony",
    "Karen",
    "Lemon",
    "Mona",
    "Nina",
    "Hinata"
  ];

  final List<String> _pesan = [
    "Apa kabar? kamu sehat??",
    "Tugas loe jarkom udah belum?",
    "Gwencana teng neng neng neng~",
    "Jangan lupa tugasnya ya.",
    "Udah makan sayang?",
    "Lagi di mana sekarang?",
    "Sudah selesai meeting?",
    "Besok jalan bareng yuk.",
    "Gimana hasil ujian?",
    "Selamat ulang tahun!",
    "Kamu lagi sibuk?",
    "Ada acara minggu depan?",
    "Film tadi keren banget!",
    "Sampai jumpa besok.",
    "Sudah dapat kabarnya?"
  ];

  final List<Color> _avatarColors = [
    Colors.blue,
    Colors.green,
    Colors.red,
    Colors.orange,
    Colors.purple,
    Colors.cyan,
    Colors.brown,
    Colors.pink,
    Colors.indigo,
    Colors.teal,
    Colors.lime,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.yellow
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _namaPengirim.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            backgroundColor: _avatarColors[index],
            child: Text(
              _namaPengirim[index][0],
              style: const TextStyle(color: Colors.white),
            ),
          ),
          title: GestureDetector(
            onTap: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(_namaPengirim[index]),
                const Text(
                  '08.00 PM',
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          ),
          subtitle: Text(_pesan[index]),
          contentPadding:
              const EdgeInsets.symmetric(vertical: 9, horizontal: 18),
        );
      },
    );
  }
}
