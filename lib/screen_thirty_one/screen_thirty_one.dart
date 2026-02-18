import 'package:flutter/material.dart';

class ScreenThirtyOne extends StatelessWidget {
  const ScreenThirtyOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xFF222222),
        elevation: 3,
        title: Text(
          "Stack",
          style: TextStyle(
            color: Colors.amber,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 300, height: 300, color: Color(0xFF5E60CE)),
            Container(width: 250, height: 250, color: Color(0xFF5390D9)),
            Container(width: 200, height: 200, color: Color(0xFF4EA8DE)),
            Container(width: 150, height: 150, color: Color(0xFF48BFE3)),
            Container(width: 100, height: 100, color: Colors.black),
          ],
        ),
      ),
    );
  }
}
