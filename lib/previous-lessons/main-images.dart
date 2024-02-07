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
      body: Center(
        // child: Image(
        //   // image: NetworkImage('https://plus.unsplash.com/premium_photo-1684445034763-013f0525c40c?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
        //       image: AssetImage('assets/Pikachu.jpg'),
        // )
        child: Image.network('https://plus.unsplash.com/premium_photo-1684445034763-013f0525c40c?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click me'),
        backgroundColor: Colors.pink,
      ),
    );
  }
}