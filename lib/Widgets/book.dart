import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  final String coverImagePath;
  final String title;
  final String author;
  final double price;

  const Book({
    Key? key,
    required this.coverImagePath,
    required this.title,
    required this.author,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Book title
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
            const SizedBox(height: 10),

            // Author
            Text(
              author,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 14,
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[700]),
            ),
            const SizedBox(height: 10),

            // Cover Photo
            Center(
              child: Image.asset(
                coverImagePath,
                height: 400,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 10),

            // Row with Price and Button
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Price
                Text(
                  "Rs.${price.toStringAsFixed(2)}",
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),

                const SizedBox(width: 15),

                // Add to cart Button
                ElevatedButton(
                  onPressed: () {
                    // Add action for button
                  },
                  child: const Text("Add to cart"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
