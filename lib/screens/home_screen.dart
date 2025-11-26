import 'package:flutter/material.dart';
import 'package:tp1/models/book.dart';
import 'package:tp1/screens/details_screen.dart';
import 'package:tp1/screens/library_screen.dart';
import 'package:tp1/widgets/home_cell.dart';
class HomeScreen extends StatelessWidget {
  var books=[HomeCell(Book("kiteb hayeti",1,"assets/peroquet.jpg")),
    HomeCell(Book("bb",2,"assets/peroquet.jpg")),
    HomeCell(Book("cc",3,"assets/peroquet.jpg")),
    HomeCell(Book("cc",4,"assets/peroquet.jpg")),
    HomeCell(Book("cc",5,"assets/peroquet.jpg")),
    HomeCell(Book("cc",6,"assets/peroquet.jpg")),
    HomeCell(Book("cc",7,"assets/peroquet.jpg")),
    HomeCell(Book("cc",8,"assets/peroquet.jpg")),
    HomeCell(Book("cc",9,"assets/peroquet.jpg")),
    HomeCell(Book("cc",10,"assets/peroquet.jpg")),
    HomeCell(Book("cc",11,"assets/peroquet.jpg")),
    HomeCell(Book("cc",12,"assets/peroquet.jpg"))
  ];
   HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 107, 235),
        title: const Text("Store INSAT", style: TextStyle(color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  DetailsScreen(book: Book("cc",12,"assets/peroquet.jpg"))),
              );
            },
          ),
        ],

      ),
        body:ListView.builder(
          itemCount: books.length,
          itemBuilder: (context, index) => books[index],
        ),
    );
  }
}