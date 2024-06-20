import 'package:flutter/material.dart';
import 'package:newapp/home.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          backgroundColor: Colors.green[300],
        ),
        body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                color: Colors.amber[400],
                height: 100,
                child: const Text("Hi Hello"),
              ),
              Container(
                color: const Color.fromARGB(255, 54, 230, 233),
                height: 200,
                child: const Text("Hi Hello"),
              ),
              Container(
                color: const Color.fromARGB(255, 42, 208, 125),
                height: 300,
                child: const Text("Hi Hello"),
              )
            ]));
  }
}
