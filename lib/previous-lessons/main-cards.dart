import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: Quote_list(),
  ));
}

class Quote_list extends StatefulWidget {
  const Quote_list({super.key});

  @override
  State<Quote_list> createState() => _Quote_listState();
}

class _Quote_listState extends State<Quote_list> {
  List<Quote> quotes = [
    Quote(
        text:
            'Today is all you have right now – so just take it all in for everything it is. ',
        author: 'Lebang'),
    Quote(
        text:
            'Experience is a hard teacher because she gives the test first, the lesson afterward.',
        author: 'Dylan'),
    Quote(
        text: 'Goal setting is the secret to a compelling future.',
        author: 'Palesa'),
  ];

  Widget quoteTemplate(quote) {
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
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text(
          'Awesome Quotes',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
