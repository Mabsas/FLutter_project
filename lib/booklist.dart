import 'package:appi_co/bookdata.dart';
import 'package:flutter/material.dart';

class Booklist extends StatefulWidget {
  Booklist({super.key});
  // List of BOOKS
  final List<BookData> books = [
    BookData("b20.jpg", "Harry Potter", "JK ROwling", 4.5),
    // BookData(bookcover, bookname, author, rating)
  ];

  @override
  State<Booklist> createState() => _BooklistState();
}

class _BooklistState extends State<Booklist> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {},
            )
          ],
        ),

        //Creating search bar
        body: Column(
            //for reading text out of range
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 7.0, horizontal: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(230, 201, 196, 236),
                          prefixIcon: const Icon(Icons.search),
                          hintText: "Looking for something?",
                          hintStyle:
                              const TextStyle(fontStyle: FontStyle.italic),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50.0),
                              borderSide: BorderSide.none)),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.menu_book),
                        prefixIconColor: Color.fromARGB(255, 104, 47, 70),
                        hintText: "My BoOkLeT",
                        hintStyle: TextStyle(
                            fontSize: 30,
                            fontStyle: FontStyle.italic,
                            color: Color.fromARGB(255, 84, 70, 70)),
                      ),
                    ),
                  ], //children
                ),
              ),
            ]),
      ),
    );
  }
}
