import 'package:appi_co/bookdata.dart';
import 'package:appi_co/mybook.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyWidget());

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  List<BookData> books = [
    BookData("assets/b20.jpg", "Harry Potter And The Prison Of Azkaban",
        "Author : JK Rowling", 4.7),
  ];

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
        body: SingleChildScrollView(
          //for reading text out of range
          child: Padding(
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
                      hintStyle: const TextStyle(fontStyle: FontStyle.italic),
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

                const SizedBox(
                  height: 12.0,
                ),

                //Creating List
                Container(
                  width: double.infinity,
                  height: 250.0,
                  child: ListView(
                    children: [mybook(books[0])],
                  ),
                )
              ], //children
            ),
          ),
        ),
      ),
    );
  }
}
