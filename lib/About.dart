import 'package:flutter/material.dart';

class AboutBook extends StatelessWidget {
  final String writer;
  final String name;
  final String description;

  const AboutBook(this.writer, this.name, this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LeT uS lOoK iNsidE...',
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal),
        ),
        backgroundColor: const Color.fromARGB(133, 217, 108, 208),
        centerTitle: true,
      ),
      body: ListView(children: [
        Container(
          margin: const EdgeInsets.only(top: 10),
          height: 300,
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                writer,
                height: 200,
                fit: BoxFit.cover,
              ),
              Text(
                "Composed by : $name",
                style: const TextStyle(fontStyle: FontStyle.italic),
              ),
              Text("Bookoverview: $description",
                  style: const TextStyle(fontStyle: FontStyle.italic))
            ],
          ),
        ),
      ]),
    );
  }
}
