import 'package:flutter/material.dart';
import 'package:spotify/widgets/appbarpersonalizada.dart';
import 'package:spotify/widgets/imagemArtistas.dart';

class Artistas extends StatefulWidget {
  const Artistas({super.key});

  @override
  State<Artistas> createState() => _ArtistasState();
}

class _ArtistasState extends State<Artistas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Column(
        crossAxisAlignment: .center,
        children: [
          AppBarPersonalizada(Icons.arrow_back_ios, 'Choose 3 or more artists you like.'),
          Container(
            width: 350,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                prefixIcon: Icon(Icons.search),
                hint: Text('Search', style: TextStyle(fontWeight: .w600),),
                fillColor: Color(0xFFF5F5F5),
              )
            ),
          ),
          Stack(
            alignment: .bottomCenter,
            children: [
              Container(
                width: .maxFinite,
                height: 655,
                child: GridView.count(
                    crossAxisCount: 3,
                    children:[
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5ebc8a1b9c7d2f1e4a3b8c9e', 'The Weeknd'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5ebc8a1b9c7d2f1e4a3b8c9e', 'The Weeknd'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5ebc8a1b9c7d2f1e4a3b8c9e', 'The Weeknd'),
                    ])
              ),
              IgnorePointer(
                child: Container(
                width: .maxFinite,
                height: 355,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: .topCenter,
                    end: .bottomCenter,
                    colors: [
                      Colors.black12,
                      Colors.black54,
                      Colors.black,
                    ]
                  )
                )
              ),
              )
            ],
          )

        ],
      ),
    );
  }
}