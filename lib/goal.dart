import 'package:flutter/material.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('1 litre :'),
            const Text('Daily 3 Bottles'),
            Image.asset(
              'assets/img/bottle.jpg',
              width: 25,
              color: Colors.blue[200],
              colorBlendMode: BlendMode.multiply,
            ),
            Image.asset(
              'assets/img/bottle.jpg',
              width: 25,
              color: Colors.blue[200],
              colorBlendMode: BlendMode.multiply,
            ),
            Image.asset(
              'assets/img/bottle.jpg',
              width: 25,
              color: Colors.blue[200],
              colorBlendMode: BlendMode.multiply,
            ),
            const SizedBox(width: 50),
          ],
        ),
        Row(
          children: [
            const Text('500 ml :'),
            const Text('Daily 6 Bottles'),
            Image.asset(
              'assets/img/bottle.jpg',
              width: 25,
              color: Colors.blue[200],
              colorBlendMode: BlendMode.multiply,
            ),
            Image.asset(
              'assets/img/bottle.jpg',
              width: 25,
              color: Colors.blue[200],
              colorBlendMode: BlendMode.multiply,
            ),
            Image.asset(
              'assets/img/bottle.jpg',
              width: 25,
              color: Colors.blue[200],
              colorBlendMode: BlendMode.multiply,
            ),
            Image.asset(
              'assets/img/bottle.jpg',
              width: 25,
              color: Colors.blue[200],
              colorBlendMode: BlendMode.multiply,
            ),
            Image.asset(
              'assets/img/bottle.jpg',
              width: 25,
              color: Colors.blue[200],
              colorBlendMode: BlendMode.multiply,
            ),
            Image.asset(
              'assets/img/bottle.jpg',
              width: 25,
              color: Colors.blue[200],
              colorBlendMode: BlendMode.multiply,
            ),
          ],
        )
      ],
    );
  }
}
