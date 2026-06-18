import 'package:flutter/material.dart';

Widget RecentSearch(@required bool isArtista, @required String foto, @required String nome, @required String artista){
  return Row(
    spacing: 16,
    children: [
      !isArtista ? Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          borderRadius: .circular(12),
          image: DecorationImage(image: NetworkImage(foto) , fit: .cover),
        ),
      ):
      Container(
        height: 75,
        width: 75,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: NetworkImage(foto) , fit: .cover),
        ),
      ),
      Column(
        crossAxisAlignment: .start,
        children: [
          Text(nome,
            textAlign: .start,
            style: TextStyle(
            color: Colors.white,
            fontWeight: .bold,
            fontSize: 14
          ),),
          Text(artista,
            textAlign: .start,
            style: TextStyle(
            color: Colors.white,
            fontSize: 10
          ),),
        ]
      )
    ]
  );
}