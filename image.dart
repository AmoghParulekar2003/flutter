import 'package:flutter/material.dart';

void main() {
  runApp(SportsApp());
}

class SportsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sports App',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blue,
      ),
      home: SportsHomePage(),
    );
  }
}

class SportsHomePage extends StatelessWidget {
  final List<String> sports = [
    'Football',
    'Basketball',
    'Tennis',
    'Cricket',
    // Add more sports as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sports'),
      ),
      body: ListView.builder(
        itemCount: sports.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(sports[index]),
          0
          );
        },
      ),
    );
  }
}

class SportDetailPage extends StatelessWidget {
  final String sport;

  SportDetailPage({required this.sport});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sport),
      ),
      body: Center(
        child: Text('This is the detail page for $sport'),
      ),
    );
  }
}
