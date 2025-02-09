import 'package:flutter/material.dart';
import 'package:book_store/screens/book_list.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cozy Bookstore',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BookList(), 
    );
  }
}
