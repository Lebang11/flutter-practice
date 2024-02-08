import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getTime() async {
    // simulate network request for a username
    Response response = await get(
        Uri.parse('https://worldtimeapi.org/api/timezone/Europe/London.json'));

    Map data = jsonDecode(response.body);
    // print(data);

    // get properties from date
    String datetime = data["datetime"];
    String offset = data["utc_offset"].substring(1, 3);

    // print(datetime);
    // print(offset);

    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    print(datetime);
    print(now);
  }

  @override
  void initState() {
    super.initState();
    getTime();
    print("Hello There");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
