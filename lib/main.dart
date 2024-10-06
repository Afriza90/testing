import 'package:flutter/material.dart';
import 'tapbarpage1.dart';
import 'tapbarpage2.dart';
import 'tapbarpage3.dart';

void main() {
  runApp(const ZaaaApp());
}

class ZaaaApp extends StatefulWidget {
  const ZaaaApp({super.key});

  @override
  State<ZaaaApp> createState() => _ZaaaAppState();
}

class _ZaaaAppState extends State<ZaaaApp> {
  ThemeMode _themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const WidgetApp(),
      debugShowCheckedModeBanner: false,
      title: 'ZaaaApp',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.dark,
      ),
      themeMode: _themeMode,
    );
  }

  void toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }
}

class WidgetApp extends StatefulWidget {
  const WidgetApp({super.key});

  @override
  State<WidgetApp> createState() => _WidgetAppState();
}

class _WidgetAppState extends State<WidgetApp> {
  @override
  Widget build(BuildContext context) {
    // Menentukan warna sesuai mode gelap atau terang
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    final Color iconColor = isDarkMode ? Colors.white : Colors.black;
    final Color textColor = isDarkMode ? Colors.white : Colors.black;

    return DefaultTabController(
      length: 3, // Jumlah Tab
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'GBWhatsapp',
            style: TextStyle(
              color: textColor, // Ubah warna berdasarkan mode
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 70, 247, 26),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.brightness_6,
                color: iconColor, // Ubah warna ikon berdasarkan mode
              ),
              onPressed: () {
                setState(() {
                  (context.findAncestorStateOfType<_ZaaaAppState>())
                      ?.toggleTheme();
                });
              },
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                color: iconColor, // Ubah warna ikon berdasarkan mode
              ),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: ChatSearchDelegate(),
                );
              },
            ),
            PopupMenuButton<String>(
              icon: Icon(
                Icons.more_vert,
                color: iconColor, // Ubah warna ikon berdasarkan mode
              ),
              onSelected: (String value) {
                switch (value) {
                  case 'Group Baru':
                    print('Group Baru selected');
                    break;
                  case 'Pesan Berbintang':
                    print('Pesan Berbintang selected');
                    break;
                  case 'Setelan':
                    print('Setelan selected');
                    break;
                }
              },
              itemBuilder: (BuildContext context) {
                return {'Group Baru', 'Pesan Berbintang', 'Setelan'}
                    .map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home, color: iconColor), // Ubah warna ikon
                text: 'Home',
              ),
              Tab(
                icon: Icon(Icons.search, color: iconColor), // Ubah warna ikon
                text: 'Status',
              ),
              Tab(
                icon: Icon(Icons.person, color: iconColor), // Ubah warna ikon
                text: 'Profile',
              ),
            ],
            labelColor: textColor, // Ubah warna teks tab berdasarkan mode
            unselectedLabelColor: Colors.grey,
          ),
        ),
        body: const TabBarView(
          children: [
            tapbarPage1(),
            tapbarPage2(),
            tapbarpage3(), // Pastikan nama kelas sesuai
          ],
        ),
      ),
    );
  }
}

class ChatSearchDelegate extends SearchDelegate {
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

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<String> filteredContacts = _namaPengirim
        .where((contact) => contact.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: filteredContacts.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(filteredContacts[index]),
          onTap: () {
            print('Klik pada ${filteredContacts[index]}');
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<String> filteredContacts = _namaPengirim
        .where((contact) => contact.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: filteredContacts.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(filteredContacts[index]),
          onTap: () {
            query = filteredContacts[index];
            showResults(context);
          },
        );
      },
    );
  }
}
