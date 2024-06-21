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
        backgroundColor: Colors.blue[600],
        centerTitle: true,
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                color: Colors.blue[300],
                padding: const EdgeInsets.all(25),
                child: const Text(
                  "How much water have You drank today?",
                  textAlign: TextAlign.center,
                )),
            Container(
              color: Colors.blue[200],
              padding: const EdgeInsets.fromLTRB(15, 20, 10, 20),
              child: const Goals(),
            ),
            Expanded(
              child: Image.asset(
                'assets/img/water_bg.jpg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ]),
    );
  }
}
