import 'package:flutter/material.dart';

class AboutBook extends StatelessWidget {
  final String writer;
  final String name;
  final String description;

  AboutBook(this.writer, this.name, this.description);

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My___bOOklet',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal),
        ),
        backgroundColor: const Color.fromARGB(133, 217, 108, 208),
        centerTitle: true,
      ),
      /*body: ListView(children: [
        Container(
          margin: EdgeInsets.only(top: 10),
          height: 300,
          width: 300,

          child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [],),
        )
      ]),*/
    );
  }
}
