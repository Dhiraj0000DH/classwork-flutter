import 'package:flutter/material.dart';

class DynamicCardView extends StatelessWidget {
  const DynamicCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card View'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 1; i < 20; i++) ...{
              MyCard(text: 'Card $i'),
            }

            // MyCard(text: 'Card 1'),
            // MyCard(
            //   text: 'Card 2',
            //   color: Colors.blue,
            // ),
            // MyCard(
            //   text: 'Card 3',
            // ),
            // MyCard(
            //   text: 'Card 4',
            //   color: Colors.green,
            // ),
          ],
        ),
      )),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.text,
    this.color,
  });

  final String text;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Card(
        color: color ?? Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
