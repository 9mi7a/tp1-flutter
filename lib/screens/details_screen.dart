import 'package:flutter/material.dart';
import '../models/book.dart';
import 'library_screen.dart';
class DetailsScreen extends StatefulWidget {
  final Book book;

  DetailsScreen({super.key, required this.book});

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int count = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 33, 107, 235),
        title: const Text(
          "Store INSAT",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.arrow_forward),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LibraryScreen()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          // Book image
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(widget.book.image, width: 250),
          ),

          // Description
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Lorem ipsum dolor sit amet consectetur adipiscing elit. Sed non risus. Suspendis selectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultricesdiam. "
                  "Maecenas ligula massa, varius a, semper congue.",
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),

          // Price
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${widget.book.price} TND",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          // Quantity
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "$count unit",
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          // Buy button
          Center(
            child: ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  if (count > 0) count--; // decrease quantity
                });
              },
              icon: const Icon(Icons.shopping_bag),
              label: const Text(
                "Purchase",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
