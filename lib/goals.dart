import 'package:flutter/material.dart';
import 'preferences_service.dart';

class Goals extends StatefulWidget {
  const Goals({super.key, required this.onUpdate});

  final Function onUpdate;

  @override
  State<Goals> createState() => _GoalsState();
}

class _GoalsState extends State<Goals> {
  int glassCount = 0;
  int sipCount = 0;
  final PreferencesService _prefsService = PreferencesService();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final glass = await _prefsService.getGlassCount();
    final sip = await _prefsService.getSipCount();
    setState(() {
      glassCount = glass ?? 0;
      sipCount = sip ?? 0;
    });
    widget.onUpdate(_getTotalWaterIntake());
  }

  void _increaseGlass() {
    setState(() {
      glassCount = glassCount < 10 ? glassCount + 1 : 10;
    });
    _prefsService.saveGlassCount(glassCount);
    widget.onUpdate(_getTotalWaterIntake());
  }

  void _increaseSip() {
    setState(() {
      sipCount = sipCount < 20 ? sipCount + 1 : 20;
    });
    _prefsService.saveSipCount(sipCount);
    widget.onUpdate(_getTotalWaterIntake());
  }

  void _decreaseGlass() {
    setState(() {
      glassCount = glassCount > 0 ? glassCount - 1 : 0;
    });
    _prefsService.saveGlassCount(glassCount);
    widget.onUpdate(_getTotalWaterIntake());
  }

  void _decreaseSip() {
    setState(() {
      sipCount = sipCount > 0 ? sipCount - 1 : 0;
    });
    _prefsService.saveSipCount(sipCount);
    widget.onUpdate(_getTotalWaterIntake());
  }

  double _getTotalWaterIntake() {
    return glassCount * 0.5 + sipCount * 0.25;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('A glass of water (500ml):'),
            Text('$glassCount'),
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
                onPressed: _increaseGlass,
                child: const Text('+')),
            const SizedBox(width: 2),
            FilledButton.tonal(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.blue[400],
                  foregroundColor: Colors.black,
                ),
                onPressed: _decreaseGlass,
                child: const Text('-'))
          ],
        ),
        Row(
          children: [
            const Text('Sips in Bottle (250ml each):'),
            Text('$sipCount'),
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
                  foregroundColor: Colors.black,
                ),
                onPressed: _increaseSip,
                child: const Text('+')),
            const SizedBox(width: 2),
            FilledButton.tonal(
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.blue[400],
                  foregroundColor: Colors.black,
                ),
                onPressed: _decreaseSip,
                child: const Text('-'))
          ],
        )
      ],
    );
  }
}
