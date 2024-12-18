import 'package:flutter/material.dart';

class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Container(
          height: 400,
          width: 800,
          color: Colors.lightBlue,
          child: const Text('I am First container'),
        ),
        Positioned(
            top: 1,
            right: 1,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.greenAccent,
              child: const Text('I am second container'),
            )),
        Positioned(
            bottom: -50,
            right: 1,
            child: Container(
              height: 200,
              width: 200,
              color: Colors.greenAccent,
              child: const Text('I am second container'),
            )),
        const Positioned(
            bottom: 1,
            left: 1,
            child: SizedBox(
                child: CircleAvatar(
                    radius: 100,
                    backgroundImage: AssetImage('assets/images/mario.jpeg')))),
      ],
    )));
  }
}
