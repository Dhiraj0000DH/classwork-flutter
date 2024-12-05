import 'package:flutter/material.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Column(
          children: [
            // First Container with Flexible
            Flexible(
              flex: 2, // Takes 2 parts of the available space
              child: Container(
                color: Colors.blue,
                child: Center(
                  child: Text(
                    'Flexible Container',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            // Second Container with Expanded
            Expanded(
              flex: 3, // Takes 3 parts of the available space
              child: Container(
                color: Colors.green,
                child: Center(
                  child: Text(
                    'Expanded Container',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
