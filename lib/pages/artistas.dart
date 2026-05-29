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
          SizedBox(height: 30),
          Stack(
            alignment: .bottomCenter,
            children: [
              Container(
                width: .maxFinite,
                height: 655,
                child: GridView.count(
                    crossAxisCount: 3,
                    children:[
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5ebb3e38a46a56a423d8f741c09', 'Beach House'),
                      ImagemArtistas('https://cdn-images.dzcdn.net/images/artist/3a27ec1beff8cae3a0196f32a6361195/1900x1900-000000-80-0-0.jpg', 'my bloody valentine'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5eb804d32b1d83c7df1031f11ec', 'Boris'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5ebb3e38a46a56a423d8f741c09', 'Beach House'),
                      ImagemArtistas('https://cdn-images.dzcdn.net/images/artist/3a27ec1beff8cae3a0196f32a6361195/1900x1900-000000-80-0-0.jpg', 'my bloody valentine'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5eb804d32b1d83c7df1031f11ec', 'Boris'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5ebb3e38a46a56a423d8f741c09', 'Beach House'),
                      ImagemArtistas('https://cdn-images.dzcdn.net/images/artist/3a27ec1beff8cae3a0196f32a6361195/1900x1900-000000-80-0-0.jpg', 'my bloody valentine'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5eb804d32b1d83c7df1031f11ec', 'Boris'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5ebb3e38a46a56a423d8f741c09', 'Beach House'),
                      ImagemArtistas('https://cdn-images.dzcdn.net/images/artist/3a27ec1beff8cae3a0196f32a6361195/1900x1900-000000-80-0-0.jpg', 'my bloody valentine'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5eb804d32b1d83c7df1031f11ec', 'Boris'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5ebb3e38a46a56a423d8f741c09', 'Beach House'),
                      ImagemArtistas('https://cdn-images.dzcdn.net/images/artist/3a27ec1beff8cae3a0196f32a6361195/1900x1900-000000-80-0-0.jpg', 'my bloody valentine'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5eb804d32b1d83c7df1031f11ec', 'Boris'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5ebb3e38a46a56a423d8f741c09', 'Beach House'),
                      ImagemArtistas('https://cdn-images.dzcdn.net/images/artist/3a27ec1beff8cae3a0196f32a6361195/1900x1900-000000-80-0-0.jpg', 'my bloody valentine'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5eb804d32b1d83c7df1031f11ec', 'Boris'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5ebb3e38a46a56a423d8f741c09', 'Beach House'),
                      ImagemArtistas('https://cdn-images.dzcdn.net/images/artist/3a27ec1beff8cae3a0196f32a6361195/1900x1900-000000-80-0-0.jpg', 'my bloody valentine'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5eb804d32b1d83c7df1031f11ec', 'Boris'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5ebb3e38a46a56a423d8f741c09', 'Beach House'),
                      ImagemArtistas('https://cdn-images.dzcdn.net/images/artist/3a27ec1beff8cae3a0196f32a6361195/1900x1900-000000-80-0-0.jpg', 'my bloody valentine'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5eb804d32b1d83c7df1031f11ec', 'Boris'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5ebb3e38a46a56a423d8f741c09', 'Beach House'),
                      ImagemArtistas('https://cdn-images.dzcdn.net/images/artist/3a27ec1beff8cae3a0196f32a6361195/1900x1900-000000-80-0-0.jpg', 'my bloody valentine'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5eb804d32b1d83c7df1031f11ec', 'Boris'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5ebb3e38a46a56a423d8f741c09', 'Beach House'),
                      ImagemArtistas('https://cdn-images.dzcdn.net/images/artist/3a27ec1beff8cae3a0196f32a6361195/1900x1900-000000-80-0-0.jpg', 'my bloody valentine'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5eb804d32b1d83c7df1031f11ec', 'Boris'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5ebb3e38a46a56a423d8f741c09', 'Beach House'),
                      ImagemArtistas('https://cdn-images.dzcdn.net/images/artist/3a27ec1beff8cae3a0196f32a6361195/1900x1900-000000-80-0-0.jpg', 'my bloody valentine'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5eb804d32b1d83c7df1031f11ec', 'Boris'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5ebb3e38a46a56a423d8f741c09', 'Beach House'),
                      ImagemArtistas('https://cdn-images.dzcdn.net/images/artist/3a27ec1beff8cae3a0196f32a6361195/1900x1900-000000-80-0-0.jpg', 'my bloody valentine'),
                      ImagemArtistas('https://i.scdn.co/image/ab6761610000e5eb804d32b1d83c7df1031f11ec', 'Boris'),
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