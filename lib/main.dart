import 'package:flutter/material.dart';
import 'package:spotify/pages/home.dart';

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
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.green),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => Home(),

      },
    );
  }
}
