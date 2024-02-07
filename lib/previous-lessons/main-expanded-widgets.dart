import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lets go'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Row(children: [
        Expanded(flex: 3, child: Image.asset('assets/Pikachu.jpg')),
        Expanded(
          flex: 3,
          child: Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.cyan,
            child: const Text('1'),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.pinkAccent,
            child: const Text('1'),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            padding: const EdgeInsets.all(30.0),
            color: Colors.amber,
            child: const Text('1'),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Text('click me'),
      ),
    );
  }
}
