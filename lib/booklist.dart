import 'package:appi_co/About.dart';
import 'package:appi_co/bookdata.dart';
import 'package:flutter/material.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        // FIRST container FIRST BOOK
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                    //functinality add remaining
                    filled: true,
                    fillColor: const Color.fromARGB(230, 201, 196, 236),
                    prefixIcon: const Icon(Icons.search),
                    hintText: "Looking for something?",
                    hintStyle: const TextStyle(fontStyle: FontStyle.italic),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                        borderSide: BorderSide.none)),
              ),
              Container(
                margin: const EdgeInsets.only(
                    top: 10), //upor theke 10 distance faka
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 186, 149, 207)),

                child: ListTile(
                  leading: Image.asset(
                    books[0].bookcover,
                    //width: 100,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(books[0].bookname),
                  subtitle: Text(
                      'Author: ${books[0].author}\nRating: ${books[0].rating.toString()}'),
                  trailing: const Icon(Icons.favorite),

                  //ontap function
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutBook(
                                "assets/author/JK Rowling.jpg",
                                "JK Rowling",
                                "SPECTRO PATRONUM")));
                  },
                ),
              ),

              //2nd conatiner second book
              Container(
                margin: const EdgeInsets.only(
                    top: 10), //upor theke 10 distance faka
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 186, 149, 207)),

                child: ListTile(
                  leading: Image.asset(
                    books[1].bookcover,
                    // width: 100,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(books[1].bookname),
                  subtitle: Text(
                      'Author: ${books[1].author}\nRating: ${books[1].rating.toString()}'),

                  trailing: const Icon(Icons.favorite),

                  //ontap function
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutBook(
                                "assets/author/George R.R. Martin.jpg",
                                "George R.R Martin",
                                "A DRAGON IS NOT A SLAVE")));
                  },
                ),
              ),

              //3rd container third book
              Container(
                margin: const EdgeInsets.only(
                    top: 10), //upor theke 10 distance faka
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 186, 149, 207)),

                child: ListTile(
                  leading: Image.asset(
                    books[2].bookcover,
                    // width: 100,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(books[2].bookname),
                  subtitle: Text(
                      'Author: ${books[2].author}\nRating: ${books[2].rating.toString()}'),

                  trailing: const Icon(Icons.favorite),

                  //ontap function
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutBook(
                                "assets/author/George R.R. Martin.jpg",
                                "George R.R Martin",
                                "WINTER IS HERE!")));
                  },
                ),
              ),

              //4th container 4th book
              Container(
                margin: const EdgeInsets.only(
                    top: 10), //upor theke 10 distance faka
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 186, 149, 207)),

                child: ListTile(
                  leading: Image.asset(
                    books[3].bookcover,
                    //width: 100,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(books[3].bookname),
                  subtitle: Text(
                      'Author: ${books[3].author}\nRating: ${books[3].rating.toString()}'),

                  trailing: const Icon(Icons.favorite),

                  //ontap function
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutBook(
                                "assets/author/George R.R. Martin.jpg",
                                "George R.R Martin",
                                "DRACARYS!")));
                  },
                ),
              ),

              //5th containe 5th book
              Container(
                margin: const EdgeInsets.only(
                    top: 10), //upor theke 10 distance faka
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: const Color.fromARGB(255, 186, 149, 207)),

                child: ListTile(
                  leading: Image.asset(
                    books[4].bookcover,
                    //width: 100,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(books[4].bookname),
                  subtitle: Text(
                      'Author: ${books[4].author}\nRating: ${books[1].rating.toString()}'),

                  trailing: const Icon(Icons.favorite),
                  //ontap function
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AboutBook(
                                "assets/author/Joe Abercrombie.webp",
                                "Joe Abercrombie",
                                "ULALA")));
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
