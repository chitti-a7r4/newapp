import 'package:flutter/material.dart';

class Goals extends StatelessWidget {
  const Goals({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Text('1 litre :'),
            Text('Daily 3 Bottles'),
            SizedBox(width: 100)
          ],
        ),
        Row(
          children: [
            Text('500 ml :'),
            Text('Daily 6 Bottles'),
            SizedBox(
              width: 50,
            )
          ],
        )
      ],
    );
  }
}
