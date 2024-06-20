import 'package:flutter/material.dart';
import 'package:newapp/goal.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My water count",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 58, 176, 240),
        centerTitle: true,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                color: Color.fromARGB(255, 109, 156, 237),
                padding: const EdgeInsets.all(40),
                child: const Text(
                  "My goal of drinking water daily is : 3L,Then I have to drink if my bottle is",
                  textAlign: TextAlign.center,
                )),
            Container(
              color: Colors.blue[200],
              padding: const EdgeInsets.all(40),
              child: const Goals(),
            )
          ]),
    );
  }
}
