import 'package:flutter/material.dart';
import 'package:book_store/widgets/book.dart';

class BookList extends StatelessWidget {
  const BookList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Cozy Bookstore'),
          backgroundColor: Colors.blueGrey,
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Book(
                coverImagePath:
                    'assets/images/harry-potter-and-the-philosophers-stone.jpg',
                title: '''Harry Potter and the Philosopher's Stone''',
                author: 'J. K. Rowling',
                price: 2000,
              ),
              Book(
                coverImagePath: 'assets/images/lightning-thief.jpg',
                title: 'The Lightning Thief',
                author: 'Rick Riordan',
                price: 1500,
              ),
              Book(
                coverImagePath: 'assets/images/valley-of-fear.jpg',
                title: 'The Valley of Fear',
                author: 'Sir Arthur Conan Doyle',
                price: 1000,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
