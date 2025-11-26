import 'package:flutter/material.dart';
import 'package:tp1/screens/home_screen.dart';

import '../models/book.dart';
import '../widgets/library_cell.dart';

class LibraryScreen extends StatelessWidget{
  var books=[Book("kiteb hayeti",1,"assets/peroquet.jpg"),
    Book("bb",2,"assets/peroquet.jpg"),
    Book("cc",3,"assets/peroquet.jpg"),
    Book("cc",4,"assets/peroquet.jpg"),
    Book("cc",5,"assets/peroquet.jpg"),
    Book("cc",6,"assets/peroquet.jpg"),
    Book("cc",7,"assets/peroquet.jpg"),
    Book("cc",8,"assets/peroquet.jpg"),
    Book("cc",9,"assets/peroquet.jpg"),
    Book("cc",10,"assets/peroquet.jpg"),
    Book("cc",11,"assets/peroquet.jpg"),
    Book("cc",12,"assets/peroquet.jpg")
  ];
  LibraryScreen({super.key});

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
                MaterialPageRoute(builder: (context) =>  HomeScreen()),
              );
            },
          ),
        ],
      ),
      body:Expanded(child:
      GridView.builder(gridDelegate: const
      SliverGridDelegateWithFixedCrossAxisCount
        (crossAxisCount: 2),
        itemCount: books.length,
        itemBuilder:(context,index){
          return LibraryCell(books[index]);
        },
      ),
      ),
    );
  }

}