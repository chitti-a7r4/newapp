// home.dart
import 'package:flutter/material.dart';
import 'package:newapp/goals.dart'; // Import the goals.dart file

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  double totalWaterIntake = 0.0;

  void updateWaterIntake(double intake) {
    setState(() {
      totalWaterIntake = intake;
    });
  }

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
            ),
          ),
          Container(
            color: Colors.blue[200],
            padding: const EdgeInsets.fromLTRB(15, 20, 10, 20),
            child: Goals(onUpdate: updateWaterIntake),
          ),
          Expanded(
            child: Stack(
              children: [
                Image.asset(
                  'assets/img/water_bg.jpg',
                  fit: BoxFit.fitWidth,
                  width: double.infinity,
                  height: double.infinity,
                ),
                Center(
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.local_drink,
                          color: Colors.blue[200],
                          size: 30,
                        ),
                        const SizedBox(width: 7),
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Your total water intake is ',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                              ),
                              TextSpan(
                                text:
                                    '${totalWaterIntake.toStringAsFixed(2)} liters',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue[200],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}
