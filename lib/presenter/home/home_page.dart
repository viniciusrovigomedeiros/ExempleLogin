import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isOn = false;

  void changeIsOn() {
    isOn = !isOn;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(31, 255, 0, 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 10,
              width: 250,
          color: Color.fromARGB(255, 255, 191, 0),
            ),
            TextButton(
              onPressed: () {
                changeIsOn();
              },
              child: const Text(
                'Ligar/Desligar',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

