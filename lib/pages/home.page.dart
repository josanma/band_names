import 'package:band_names/models/band.model.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Band> bands = [
    Band(id: '1', name: 'Metallica', votes: 10),
    Band(id: '2', name: 'Amar azul', votes: 50),
    Band(id: '3', name: 'Dua lipa', votes: 10),
    Band(id: '4', name: 'Daft Punk', votes: 21),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bands',
          style: TextStyle(color: Colors.black54),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView.builder(
          itemCount: bands.length,
          itemBuilder: (context, i) => _bandTile(bands[i])),
    );
  }

  ListTile _bandTile(Band band) {
    return ListTile(
      leading: CircleAvatar(
        child: Text(band.name.substring(0, 2)),
        backgroundColor: Colors.lightBlueAccent,
      ),
      title: Text(band.name),
      trailing: Text(
        '${band.votes}',
        style: TextStyle(fontSize: 20),
      ),
      onTap: () {
        print(band.name);
      },
    );
  }
}
