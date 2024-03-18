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
      home: PlayersListPage(),
    );
  }
}

class PlayersListPage extends StatelessWidget {
  final List<Player> players = [
    Player(
      name: 'David de Gea',
      photoAsset: '/home/apsit/Desktop/ADARSH/assets/david.png', // Path to the image in assets folder
      position: 'Goalkeeper',
      jerseyNumber: 1,
    ),
    Player(
      name: 'Harry Maguire',
      photoAsset: '/home/apsit/Desktop/ADARSH/assets/harry.png', // Path to the image in assets folder
      position: 'Defender',
      jerseyNumber: 5,
    ),
    // Add more players as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manchester United Players'),
      ),
      body: ListView.builder(
        itemCount: players.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(players[index].photoAsset),
            ),
            title: Text(players[index].name),
            subtitle: Text('Position: ${players[index].position}\nJersey Number: ${players[index].jerseyNumber}'),
          );
        },
      ),
    );
  }
}

class Player {
  final String name;
  final String photoAsset;
  final String position;
  final int jerseyNumber;

  Player({
    required this.name,
    required this.photoAsset,
    required this.position,
    required this.jerseyNumber,
  });
}
