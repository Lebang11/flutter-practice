import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Quote_list(),
  ));
}

class Quote_list extends StatefulWidget {
  const Quote_list({super.key});

  @override
  State<Quote_list> createState() => _Quote_listState();
}

class _Quote_listState extends State<Quote_list> {
  List<String> quotes = [
    'Today is all you have right now – so just take it all in for everything it is. ',
    'Experience is a hard teacher because she gives the test first, the lesson afterward.',
    'Goal setting is the secret to a compelling future.'
  ];

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
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}
