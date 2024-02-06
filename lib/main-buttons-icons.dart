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
        // child: Icon(
        //   Icons.airport_shuttle,
        //   color: Colors.lightBlue,
        //   size: 50.0,
        // )
        //   child: ElevatedButton(
        //     onPressed: () {},
        //     child: Text('click me')
        // ),
        //   child: ElevatedButton.icon(
        //     onPressed: () {print("you pressed me!");},
        //     label: Text("Disabled?"),
        //     icon: Icon(
        //       Icons.accessible_forward_outlined
        //     ),
        //   ),
        child: IconButton(
          onPressed: () {print("you pressed me.");},
          icon: Icon(Icons.accessible_forward_outlined),
          color: Colors.amberAccent,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('click me'),
        backgroundColor: Colors.pink,
      ),
    );
  }
}