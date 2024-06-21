// goals.dart
import 'package:flutter/material.dart';

class Goals extends StatefulWidget {
  final Function(double) onUpdate; // Callback to notify parent of changes

  const Goals({Key? key, required this.onUpdate}) : super(key: key);

  @override
  State<Goals> createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  int glass = 0;
  int sip = 0;

  void increaseGlass() {
    setState(() {
      glass = glass < 10 ? glass + 1 : 10;
      widget.onUpdate(getTotalWaterIntake());
    });
  }

  void increaseSip() {
    setState(() {
      sip = sip < 20 ? sip + 1 : 20;
      widget.onUpdate(getTotalWaterIntake());
    });
  }

  void decreaseGlass() {
    setState(() {
      glass = glass > 0 ? glass - 1 : 0;
      widget.onUpdate(getTotalWaterIntake());
    });
  }

  void decreaseSip() {
    setState(() {
      sip = sip > 0 ? sip - 1 : 0;
      widget.onUpdate(getTotalWaterIntake());
    });
  }

  double getTotalWaterIntake() {
    double glassIntake = glass * 0.5; // each glass is 0.5 liters
    double sipIntake = sip * 0.25; // each sip is 0.25 liters
    return glassIntake + sipIntake;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('A glass full of water (500ml) :'),
            Text('$glass'),
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
              child: const Text('+'),
            ),
            const SizedBox(width: 2),
            FilledButton.tonal(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.blue[400],
                foregroundColor: Colors.black,
              ),
              onPressed: decreaseGlass,
              child: const Text('-'),
            )
          ],
        ),
        Row(
          children: [
            const Text(' Sips in Bottle (250ml each) :'),
            Text('$sip'),
            Image.asset(
              'assets/img/bottle.jpg',
              width: 35,
              color: Colors.blue[200],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded(child: SizedBox()),
            FilledButton.tonal(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.blue[400],
              ),
              onPressed: increaseSip,
              child: const Text('+'),
            ),
            const SizedBox(width: 2),
            FilledButton.tonal(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.blue[400],
              ),
              onPressed: decreaseSip,
              child: const Text('-'),
            )
          ],
        )
      ],
    );
  }
}
