import 'package:flutter/material.dart';

Widget AppBarPersonalizada(@required IconData icone, @required String texto) {
  return Container(
    height: 80,
    width: .maxFinite,
    color: Color(0xFF121212),
    child: Row(
      children: [
        SizedBox(width: 24),
        Container(
          width: 42,
          height: 42,
          child: Column(
            mainAxisAlignment: .center,
            crossAxisAlignment: .center,
            children: [Icon(icone, color: Colors.white, size: 16)],
          ),
          decoration: BoxDecoration(
            borderRadius: .circular(1000),
            color: Colors.black,
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          child: Text(
            texto,
            maxLines: 1,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'Avenir',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
  );
}
