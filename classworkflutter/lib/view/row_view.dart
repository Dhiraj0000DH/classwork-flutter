import 'package:flutter/material.dart';

class ColumnRow extends StatelessWidget {
  const ColumnRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.yellow,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Button1')),
            ElevatedButton(onPressed: () {}, child: const Text('Button2')),
            ElevatedButton(onPressed: () {}, child: const Text('Button3')),
          ],
        ),
      ),
    );
  }
}
