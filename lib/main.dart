import 'package:flutter/material.dart';
import 'package:spotify/pages/home.dart';
import 'package:spotify/pages/artistas.dart';
import 'package:spotify/pages/podcasts.dart';
import 'package:spotify/pages/busca.dart';
import 'package:spotify/pages/album.dart';
import 'package:spotify/pages/musica.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.green)),
      initialRoute: '/musica',
      routes: {
        '/home': (context) => Home(),
        '/artistas': (context) => Artistas(),
        '/podcasts': (context) => Podcasts(),
        '/busca': (context) => Busca(),
        '/album': (context) => Album(),
        '/musica': (context) => Musica(),
      },
    );
  }
}
