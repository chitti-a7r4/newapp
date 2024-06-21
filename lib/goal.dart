import 'package:flutter/material.dart';

class Goals extends StatefulWidget {
  const Goals({super.key});

  @override
  State<Goals> createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  int Glass = 0;
  int Sip = 0;
  void increaseGlass() {
    setState(() {
      Glass = Glass < 10 ? Glass + 1 : 10;
    });
  }

  void increaseSip() {
    setState(() {
      Sip = Sip < 20 ? Sip + 1 : 20;
    });
  }

  void decreaseGlass() {
    setState(() {
      Glass = Glass > 0 ? Glass - 1 : 0;
    });
  }

  void decreaseSip() {
    setState(() {
      Sip = Sip > 0 ? Sip - 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('A glass full of water (500ml) :'),
            Text('$Glass'),
            Image.asset(
              'assets/img/glass.png',
              width: 35,
              color: Colors.blue[200],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child: SizedBox()),
            FilledButton.tonal(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.blue[400],
                  foregroundColor: Colors.black,
                ),
                onPressed: increaseGlass,
                child: const Text(
                  '+',
                )),
            const SizedBox(
              width: 2,
            ),
            FilledButton.tonal(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.blue[400],
                  foregroundColor: Colors.black,
                ),
                onPressed: decreaseGlass,
                child: const Text(
                  '-',
                ))
          ],
        ),
        Row(
          children: [
            const Text(' Sips in Bottle (250ml each) :'),
            Text('$Sip'),
            Image.asset(
              'assets/img/bottle.jpg',
              width: 35,
              color: Colors.blue[200],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child: SizedBox()),
            FilledButton.tonal(
                style:
                    FilledButton.styleFrom(backgroundColor: Colors.blue[400]),
                onPressed: increaseSip,
                child: const Text('+')),
            const SizedBox(
              width: 2,
            ),
            FilledButton.tonal(
                style:
                    FilledButton.styleFrom(backgroundColor: Colors.blue[400]),
                onPressed: decreaseSip,
                child: const Text('-'))
          ],
        )
      ],
    );
  }
}
