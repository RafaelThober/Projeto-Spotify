import 'package:flutter/material.dart';

class Musica extends StatefulWidget {
  const Musica({super.key});

  @override
  State<Musica> createState() => _MusicaState();
}

class _MusicaState extends State<Musica> {
  String capaAlbum =
      'https://i.scdn.co/image/ab67616d0000b273fe6211303e796f3d5b7a0e02';

  String nomeAlbum = 'Heaven or Las Vegas';
  String nomeMusica = 'Pitch the Baby';
  String artista = 'Cocteau Twins';

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

          Color corCard = Color.lerp(corAlbum, Colors.white, 0.20)!;

          return Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: .topCenter,
                end: .bottomCenter,
                colors: [corAlbum, Color.lerp(corAlbum, Colors.black, 0.78)!],
              ),
            ),
            child: SingleChildScrollView(
              padding: .symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 25),

                  Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.white,
                        size: 24,
                      ),

                      Expanded(
                        child: Text(
                          nomeAlbum,
                          textAlign: .center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                            fontFamily: 'Avenir',
                            fontWeight: .bold,
                          ),
                        ),
                      ),

                      Icon(Icons.more_horiz, color: Colors.white, size: 20),
                    ],
                  ),

                  SizedBox(height: 55),

                  AspectRatio(
                    aspectRatio: 1,
                    child: Image.network(
                      capaAlbum,
                      width: double.infinity,
                      fit: .cover,
                    ),
                  ),

                  SizedBox(height: 32),

                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Text(
                              nomeMusica,
                              maxLines: 1,
                              overflow: .ellipsis,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontFamily: 'Avenir',
                                fontWeight: .bold,
                              ),
                            ),

                            SizedBox(height: 3),

                            Text(
                              artista,
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 11,
                                fontFamily: 'Avenir',
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(width: 10),

                      Icon(
                        Icons.favorite_border,
                        color: Colors.white70,
                        size: 25,
                      ),
                    ],
                  ),

                  SizedBox(height: 12),

                  SizedBox(
                    height: 20,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        trackHeight: 2,
                        thumbShape: RoundSliderThumbShape(
                          enabledThumbRadius: 5,
                        ),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 0),
                      ),
                      child: Slider(
                        value: 0.35,
                        activeColor: Colors.white,
                        inactiveColor: Colors.white38,
                        onChanged: (valor) {},
                      ),
                    ),
                  ),

                  SizedBox(height: 4),

                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Text(
                        '1:07',
                        style: TextStyle(color: Colors.white70, fontSize: 8),
                      ),

                      Text(
                        '-2:07',
                        style: TextStyle(color: Colors.white70, fontSize: 8),
                      ),
                    ],
                  ),

                  SizedBox(height: 14),

                  Row(
                    mainAxisAlignment: .spaceBetween,
                    children: [
                      Icon(Icons.shuffle, color: Colors.white, size: 18),

                      Icon(Icons.skip_previous, color: Colors.white, size: 31),

                      Container(
                        width: 52,
                        height: 52,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.pause, color: Colors.black, size: 30),
                      ),

                      Icon(Icons.skip_next, color: Colors.white, size: 31),

                      Icon(Icons.repeat, color: Color(0xFF1ED760), size: 21),
                    ],
                  ),

                  SizedBox(height: 17),

                  Row(
                    children: [
                      Icon(Icons.bluetooth, color: Color(0xFF1ED760), size: 13),

                      SizedBox(width: 4),

                      Text(
                        'QCY MeloBuds Pro',
                        style: TextStyle(
                          color: Color(0xFF1ED760),
                          fontSize: 7,
                          fontFamily: 'Avenir',
                        ),
                      ),

                      Spacer(),

                      Icon(Icons.ios_share, color: Colors.white70, size: 17),

                      SizedBox(width: 25),

                      Icon(Icons.queue_music, color: Colors.white70, size: 19),
                    ],
                  ),

                  SizedBox(height: 16),

                  Container(
                    width: double.infinity,
                    height: 100,
                    padding: .only(left: 11, right: 11, top: 12),
                    decoration: BoxDecoration(
                      color: corCard,
                      borderRadius: .circular(4),
                    ),
                    child: Row(
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          'Lyrics',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                            fontFamily: 'Avenir',
                            fontWeight: .bold,
                          ),
                        ),

                        Spacer(),

                        Container(
                          padding: .symmetric(horizontal: 11, vertical: 5),
                          decoration: BoxDecoration(
                            color: Color.lerp(corCard, Colors.black, 0.35),
                            borderRadius: .circular(20),
                          ),
                          child: Text(
                            'MORE  ↗',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 7,
                              fontWeight: .bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 18),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
