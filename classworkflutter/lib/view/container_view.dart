import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
          child: Center(
        child: Container(
          width: 200, //double.infininity
          height: 200,
          alignment: Alignment.center,
          // color: Colors.amberAccent,
          child: const Text('I m a Container'),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.amberAccent,
              border: Border.all(
                color: Colors.black,
                width: 2,
              )),
        ),
      )),
    );
  }
}
