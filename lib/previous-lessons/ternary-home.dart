import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    print(data);

    String bgImage = data["isDaytime"] ? 'assets/day.png' : 'assets/night.png';
    Color bgColor = data["isDaytime"] ? Colors.blue : Colors.indigo;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(bgImage),
          fit: BoxFit.cover,
        )),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(
            children: [
              TextButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/location');
                  },
                  icon: const Icon(
                    Icons.edit_location,
                    color: Colors.grey,
                  ),
                  label: const Text(
                    'Edit Location',
                    style: TextStyle(color: Colors.grey),
                  )),
              const SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    data["location"],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        letterSpacing: 2.0),
                  )
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(
                data["time"],
                style: const TextStyle(color: Colors.white, fontSize: 66.0),
              )
            ],
          ),
        ),
      )),
    );
  }
}
