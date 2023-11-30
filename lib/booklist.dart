import 'package:appi_co/bookdata.dart';
import 'package:flutter/material.dart';

/*class Booklist extends StatefulWidget {
   Booklist({super.key});
    // List of BOOKS
    final List<BookData> books = [
      BookData("assets/books/b20.jpg", "Harry Potter", "JK ROwling", 4.5),
      BookData("assets/books/b12.jpg", "Dance With The Dragons", "George R.R Mar", rating)
    ];

  @override
  State<Booklist> createState() => _BooklistState();
}

class _BooklistState extends State<Booklist> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
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
              ], //children
            ),
          ),

          Expanded(child: ListView.builder(
            itemBuilder: (context,index){
              return ListTile( 
                leading: Image.asset("b20.jpg"),
                           );
                },
                ),
                ),

          ]

        ),
      ),
    );



   
  }
}*/

class Booklist extends StatelessWidget {
  Booklist({super.key});
  final List<BookData> books = [
    BookData("assets/books/b20.jpg", "HARRY POTTER AND THE CHAMBER OF SECRETS",
        "JK Rowling", 4.7),
    BookData("assets/books/b12.jpg", "DANCE WITH THE DRAGONS",
        "George R.R Martin", 5.0),
    BookData("assets/books/b16.jpg", "THE WORLD OF ICE AND FIRE ",
        "George R.R Martin", 4.8),
    BookData("assets/books/b13.jpg", "A FEAST FOR THE CROWS",
        "George R.R Martin", 4.9),
    BookData("assets/books/b14.jpg", "LAST ARGUMENT OF KINGS",
        "Joe Abercrombie", 4.3)
  ];

  @override
  Widget build(BuildContext context) {
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
      body: Column(
        // FIRST CARD FIRST BOOK
        children: [
          Card(
            child: ListTile(
              leading: Image.asset(
                books[0].bookcover,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
              title: Text(books[0].bookname),
              subtitle: Text(
                  'Author: ${books[0].author}\nRating: ${books[0].rating.toString()}'),

              //ontap function
            ),
          ),

          //2nd CARD second book
          Card(
            child: ListTile(
              leading: Image.asset(
                books[1].bookcover,
                width: 70,
                height: 70,
                fit: BoxFit.cover,
              ),
              title: Text(books[1].bookname),
              subtitle: Text(
                  'Author: ${books[1].author}\nRating: ${books[1].rating.toString()}'),

              //ontap function
            ),
          )
        ],
      ),
    );
  }
}
