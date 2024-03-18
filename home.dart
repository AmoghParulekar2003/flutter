import 'package:flutter/material.dart';
import 'package:amogh/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sports Data App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue,
        hintColor: Colors.blue,
        appBarTheme: const AppBarTheme(
          color: Colors.blue,
        ),
      ),
      home: HomePage(),
    );
  }
}

class Sport {
  final String name;
  final String imagePath;

  Sport(this.name, this.imagePath);
}

class HomePage extends StatelessWidget {
  final List<Sport> sportsData = [
    Sport('Football', '/home/oem/Desktop/amogh/assets/football.png'),
    Sport('Cricket', '/home/oem/Desktop/amogh/assets/cricket.png'),
    Sport('Basketball', '/home/oem/Desktop/amogh/assets/Basketball.png'),
    Sport('Tennis', '/home/oem/Desktop/amogh/assets/tennis.png'),
    // Add more sports as needed
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sports Data App'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyCustomForm()));
            },
            child: const Text(
              'Login',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: sportsData.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              print('Sport selected: ${sportsData[index].name}');
            },
            child: ListTile(
              title: Text(sportsData[index].name),
              leading: CircleAvatar(
                backgroundImage: AssetImage(sportsData[index].imagePath),
              ),
              // Add more details or functionality as needed
            ),
          );
        },
      ),
    );
  }
}
