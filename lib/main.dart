import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text("My water count"),
      backgroundColor: Colors.blue[300],
      centerTitle: true,
    ),
    body: const Home(),
  )));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green[50],
      padding: const EdgeInsets.all(50),
      margin: const EdgeInsets.fromLTRB(40, 100, 100, 100),
      child: const Text(
        "Haylo Whassup",
        style: TextStyle(
          fontSize: 80,
          letterSpacing: 5,
          decoration: TextDecoration.overline,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
