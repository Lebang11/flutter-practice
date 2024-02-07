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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Row(
            children: [
              Text(
                'Hello',
                style: TextStyle(color: Colors.green),
              ),
              Text(
                ' World',
                style: TextStyle(color: Color.fromARGB(255, 46, 206, 255)),
              )
            ],
          ),
          Container(
              padding: const EdgeInsets.all(20.0),
              color: Colors.cyan,
              child: const Text('one')),
          Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.pinkAccent,
              child: const Text('two')),
          Container(
              padding: const EdgeInsets.all(40.0),
              color: Colors.amberAccent,
              child: const Text('three')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Text('click me'),
      ),
    );
  }
}
