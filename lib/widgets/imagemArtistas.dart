import 'package:flutter/material.dart';

Widget ImagemArtistas(@required String imagem, @required nome) {
  return Column(
    children: [
      Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: .circle,
          image: DecorationImage(image: NetworkImage(imagem) , fit: .cover),
        ),
      ),
      Text('${nome}',
        style: TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: .bold
      ),)
    ],
  );
}