import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getData() async {
    // simulate network request for a username
    Response response =
        await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));

    Map data = jsonDecode(response.body);
    print(data);
    print(data["title"]);
  }

  @override
  void initState() {
    super.initState();
    getData();
    print("Hello There");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
