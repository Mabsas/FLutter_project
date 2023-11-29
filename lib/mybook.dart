import 'package:appi_co/bookdata.dart';
import 'package:flutter/material.dart';

Widget mybook(BookData book) {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 121.66,
          height: 180.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              image: DecorationImage(
                  image: NetworkImage(book.bookcover), fit: BoxFit.cover)),
        )
      ],
    ),
  );
}
