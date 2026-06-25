import 'package:flutter/material.dart';

Widget FaixaAlbum(
  @required String musica,
  @required String artista,
  @required bool tocando,
) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.symmetric(
      horizontal: 18,
      vertical: 8,
    ),
    child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                musica,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  color: tocando
                      ? Color(0xFF1ED760)
                      : Colors.white,
                  fontSize: 13,
                  fontFamily: 'Avenir',
                ),
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 8,
                    color: Color(0xFF1ED760),
                  ),
                  SizedBox(width: 5),
                  Text(
                    artista,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 10,
                      fontFamily: 'Avenir',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Icon(
          Icons.more_horiz,
          color: Colors.white70,
          size: 20,
        ),
      ],
    ),
  );
}
