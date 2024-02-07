import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home()));
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
      body: Container(
          padding: EdgeInsets.fromLTRB(10.0, 20.0, 30.0, 40.0),
          margin: EdgeInsets.all(30.0),
          color: Colors.grey[400],
          child: Text('hello')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click me'),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
