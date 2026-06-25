import 'package:flutter/material.dart';
import 'package:spotify/widgets/faixaAlbum.dart';

class Album extends StatefulWidget {
  const Album({super.key});

  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  String capaAlbum =
      'https://i.scdn.co/image/ab67616d0000b273fe6211303e796f3d5b7a0e02';

  String nomeAlbum = 'Heaven or Las Vegas';
  String artista = 'Cocteau Twins';
  String ano = '1990';

  late Future<ColorScheme> coresAlbum;

  @override
  void initState() {
    super.initState();

    coresAlbum = ColorScheme.fromImageProvider(
      provider: NetworkImage(capaAlbum),
      brightness: Brightness.dark,
      dynamicSchemeVariant: DynamicSchemeVariant.fidelity,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: FutureBuilder<ColorScheme>(
        future: coresAlbum,
        builder: (context, snapshot) {
          Color corAlbum = snapshot.data?.primaryContainer ?? Color(0xFF8B231C);

          return Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: .topCenter,
                end: .bottomCenter,
                colors: [
                  corAlbum,
                  Color.lerp(corAlbum, Colors.black, 0.55)!,
                  Color(0xFF121212),
                  Color(0xFF121212),
                ],
                stops: [0, 0.25, 0.52, 1],
              ),
            ),
            child: Stack(
              children: [
                SingleChildScrollView(
                  padding: EdgeInsets.only(bottom: 135),
                  child: Column(
                    crossAxisAlignment: .start,
                    children: [
                      SizedBox(height: 25),

                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white70,
                          size: 20,
                        ),
                      ),

                      SizedBox(height: 10),

                      Center(
                        child: Image.network(
                          capaAlbum,
                          width: 185,
                          height: 185,
                          fit: BoxFit.cover,
                        ),
                      ),

                      SizedBox(height: 28),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Text(
                          nomeAlbum,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontFamily: 'Avenir',
                            fontWeight: .bold,
                          ),
                        ),
                      ),

                      SizedBox(height: 8),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 11,
                              backgroundImage: NetworkImage(capaAlbum),
                            ),
                            SizedBox(width: 8),
                            Text(
                              artista,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontFamily: 'Avenir',
                                fontWeight: .bold,
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 7),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: Text(
                          'Album • $ano',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 10,
                            fontFamily: 'Avenir',
                          ),
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: .spaceBetween,
                          children: [
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.favorite_border,
                                    color: Colors.white70,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.download_for_offline,
                                    color: Color(0xFF1ED760),
                                    size: 20,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.more_horiz,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 53,
                              height: 53,
                              decoration: BoxDecoration(
                                color: Color(0xFF1ED760),
                                shape: BoxShape.circle,
                              ),
                              child: Icon(
                                Icons.pause,
                                color: Colors.black,
                                size: 28,
                              ),
                            ),
                          ],
                        ),
                      ),

                      FaixaAlbum('Cherry-coloured Funk', artista, false),

                      FaixaAlbum('Pitch the Baby', artista, true),

                      FaixaAlbum('Iceblink Luck', artista, false),

                      FaixaAlbum('Fifty-Fifty Clown', artista, false),

                      FaixaAlbum('Heaven or Las Vegas', artista, false),

                      FaixaAlbum('I Wear Your Ring', artista, false),
                    ],
                  ),
                ),

                Positioned(
                  left: 8,
                  right: 8,
                  bottom: 58,
                  child: Container(
                    height: 55,
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Color.lerp(corAlbum, Colors.black, 0.45),
                      borderRadius: .circular(7),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Image.network(
                                capaAlbum,
                                width: 42,
                                height: 42,
                                fit: BoxFit.cover,
                              ),

                              SizedBox(width: 8),

                              Expanded(
                                child: Column(
                                  mainAxisAlignment: .center,
                                  crossAxisAlignment: .start,
                                  children: [
                                    Text(
                                      'Pitch the Baby • Cocteau Twins',
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 10,
                                        fontWeight: .bold,
                                      ),
                                    ),
                                    Text(
                                      'QCY MeloBuds Pro',
                                      style: TextStyle(
                                        color: Color(0xFF1ED760),
                                        fontSize: 8,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                              Icon(
                                Icons.bluetooth,
                                color: Color(0xFF1ED760),
                                size: 19,
                              ),

                              SizedBox(width: 15),

                              Icon(Icons.pause, color: Colors.white, size: 26),

                              SizedBox(width: 7),
                            ],
                          ),
                        ),

                        LinearProgressIndicator(
                          value: 0.55,
                          minHeight: 2,
                          color: Colors.white,
                          backgroundColor: Colors.white30,
                        ),
                      ],
                    ),
                  ),
                ),

                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    height: 58,
                    color: Color(0xF2111111),
                    child: Row(
                      mainAxisAlignment: .spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: .center,
                          children: [
                            Icon(
                              Icons.home_filled,
                              color: Colors.white,
                              size: 22,
                            ),
                            Text(
                              'Home',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),

                        Column(
                          mainAxisAlignment: .center,
                          children: [
                            Icon(Icons.search, color: Colors.white54, size: 22),
                            Text(
                              'Search',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),

                        Column(
                          mainAxisAlignment: .center,
                          children: [
                            Icon(
                              Icons.library_music,
                              color: Colors.white54,
                              size: 22,
                            ),
                            Text(
                              'Your Library',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 9,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
