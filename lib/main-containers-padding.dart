import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
  home: Home()
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lets go'),
        centerTitle: true,
        backgroundColor: Colors.pink,
      ),
      body: Row(
        children: [
          Text('hello, world'),
          TextButton(
              onPressed: () {print("I've been pressed fr fr");},
              child: Text(
                'This is button'
              ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click me'),
        backgroundColor: Colors.pink,
      ),
    );
  }
}