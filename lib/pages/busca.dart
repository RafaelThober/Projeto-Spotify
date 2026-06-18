import 'package:flutter/material.dart';
import 'package:spotify/widgets/recentSearch.dart';

class Busca extends StatefulWidget {
  const Busca({super.key});

  @override
  State<Busca> createState() => _BuscaState();
}

class _BuscaState extends State<Busca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Container(
        height: .infinity,
        width: .infinity,
        padding: .only(left: 21),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              spacing: 20,
              children: [
                SizedBox(width: 20),
                Container(
                  width: 300,
                  height: 40,
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      filled: true,
                      prefixIcon: Icon(Icons.search),
                      hint: Text(
                        'Search',
                        style: TextStyle(
                          fontWeight: .w600,
                          color: Colors.white,
                        ),
                      ),
                      fillColor: Color(0xFF282828),
                      prefixIconColor: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.white, fontWeight: .bold),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Text('Recent Searches', style: TextStyle(color: Colors.white, fontWeight: .bold),),
              ],
            ),
            SizedBox(height: 15,),
            SingleChildScrollView(
              scrollDirection: .vertical,
              child: Column(
                spacing: 15,
                children: [
                  RecentSearch(false, 'https://i.scdn.co/image/ab67616d00001e02056aeb1f8c2b064c31442b67', 'new york fall, 1977', 'Album ⋅ heavensouls'),
                  RecentSearch(true, 'https://i.scdn.co/image/ab6761610000e5ebcc61b54c332a2c8baaaf375b', 'clipping.', 'Artist'),
                  RecentSearch(false, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtvKQUDK7_Cr4DXNswJXmSoRkMWkMAugn4AA&s', 'In Utero', 'Album ⋅ Nirvana'),
                  RecentSearch(false, 'https://i.scdn.co/image/ab67616d0000b2730ede770070357575bc050511', 'loveless', 'Album ⋅ my bloody valentine'),
                  RecentSearch(true, 'https://i.scdn.co/image/ab6761610000e5ebe25ae69c1d10de369149a7f2', 'Swans', 'Artist'),
                  RecentSearch(true, 'https://i.scdn.co/image/ab6761610000e5eb713ebe89e60953355cf21069', 'Les Rallizes Dénudés', 'Artist'),
                  RecentSearch(false, 'https://i.scdn.co/image/ab67616d0000b2739ad23cad3ef037b00c1d2a20', 'Sunbather', 'Album ⋅ Deafheaven'),
                  RecentSearch(false, 'https://i.scdn.co/image/ab67616d0000b2736e56a2355e849c1cb25e4e76', 'Twin Fantasy', 'Album ⋅ Car Seat Headrest'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
