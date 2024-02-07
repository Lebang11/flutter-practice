import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({
    required this.quote,
    required this.delete,
  });

  final Quote quote;
  final VoidCallback delete;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
                style: TextStyle(fontSize: 16.0, color: Colors.grey[500])),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[500]),
            ),
            const SizedBox(
              height: 8.0,
            ),
            TextButton.icon(
              label: const Text('delete'),
              onPressed: delete,
              icon: const Icon(
                Icons.delete,
              ),
            )
          ],
        ),
      ),
    );
  }
}
